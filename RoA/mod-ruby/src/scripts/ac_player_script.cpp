#include "ac_player_script.hpp"
#include <iostream>

VALUE ConvertToRuby(const void* ptr, const std::string& type)
{
    if (!ptr) return Qnil;

    if (type == "Player*")
    {
        Player* player = const_cast<Player*>(static_cast<const Player*>(ptr));
        return Data_Wrap_Struct(rb_cAcPlayer, nullptr, nullptr, player);
    }
    else if (type == "uint32*" || type == "uint32")
    {
        return UINT2NUM(*static_cast<const uint32*>(ptr));
    }
    else if (type == "std::string*" || type == "std::string")
    {
        const std::string& str = *static_cast<const std::string*>(ptr);
        return rb_str_new(str.c_str(), str.length());
    }
    else if (type == "uint8*" || type == "uint8")
    {
        return UINT2NUM(*static_cast<const uint8*>(ptr));
    }

    std::cerr << "Unknown type for conversion: " << type << std::endl;
    return Qnil;
}

AcPlayerScriptMgr::AcPlayerScriptMgr() : PlayerScript("AcPlayerScriptMgr")
{
    // The base class constructor will handle registration
}

AcPlayerScriptMgr* AcPlayerScriptMgr::instance()
{
    static AcPlayerScriptMgr instance;
    return &instance;
}

void AcPlayerScriptMgr::OnLogin(Player* player)
{
    std::cout << "AcPlayerScriptMgr::OnLogin" << std::endl;
    if (!player)
    {
        std::cerr << "OnLogin called with null player" << std::endl;
        return;
    }

    uint32 accountId = player->GetSession() ? player->GetSession()->GetAccountId() : 0;
    CallRubyHandlers("on_login", player, &accountId);
}

void AcPlayerScriptMgr::OnLogout(Player* player)
{
    CallRubyHandlers("on_logout", player);
}

void AcPlayerScriptMgr::OnChat(Player* player, uint32 type, uint32 lang, std::string& msg)
{
    CallRubyHandlers("on_chat", player, &type, &lang, &msg);
}

void AcPlayerScriptMgr::OnLevelChanged(Player* player, uint8 oldLevel)
{
    CallRubyHandlers("on_level_up", player, &oldLevel);
}

void AcPlayerScriptMgr::RegisterRubyHandler(const char* event, VALUE handler)
{
    m_rubyHandlers[event].push_back(handler);
}

void AcPlayerScriptMgr::RegisterEventInfo(const char* event, const std::vector<std::string>& argTypes)
{
    m_eventInfo[event] = {argTypes};
}

template<typename... Args>
void AcPlayerScriptMgr::CallRubyHandlers(const char* event, Args... args)
{
    auto handlerIt = m_rubyHandlers.find(event);
    auto eventInfoIt = m_eventInfo.find(event);

    if (handlerIt != m_rubyHandlers.end() && eventInfoIt != m_eventInfo.end())
    {
        const auto& argTypes = eventInfoIt->second.argTypes;
        std::vector<const void*> argPtrs = {&args...};

        if (argTypes.size() != argPtrs.size())
        {
            std::cerr << "Argument count mismatch for event: " << event << std::endl;
            return;
        }

        std::vector<VALUE> rubyArgs;
        for (size_t i = 0; i < argTypes.size(); ++i)
        {
            VALUE arg = ConvertToRuby(argPtrs[i], argTypes[i]);
            if (arg == Qnil && argPtrs[i] != nullptr)
            {
                std::cerr << "Failed to convert argument " << i << " for event: " << event << std::endl;
                return;
            }
            rubyArgs.push_back(arg);
        }

        for (VALUE handler : handlerIt->second)
        {
            if (NIL_P(handler))
            {
                std::cerr << "Nil handler found for event: " << event << std::endl;
                continue;
            }

            int state;
            struct RubyCallData {
                VALUE handler;
                int argc;
                VALUE* argv;
            };
            RubyCallData call_data = {handler, static_cast<int>(rubyArgs.size()), rubyArgs.data()};

            rb_protect([](VALUE data) -> VALUE {
                RubyCallData* call_data = reinterpret_cast<RubyCallData*>(data);
                return rb_funcall2(call_data->handler, rb_intern("call"), call_data->argc, call_data->argv);
            }, reinterpret_cast<VALUE>(&call_data), &state);

            if (state)
            {
                VALUE exception = rb_errinfo();
                VALUE message = rb_funcall(exception, rb_intern("message"), 0);
                std::cerr << "Ruby exception in event " << event << ": " << StringValueCStr(message) << std::endl;
                rb_set_errinfo(Qnil);
            }
        }
    }
}

static VALUE rb_ac_player_script_register_handler(VALUE self, VALUE event, VALUE handler)
{
    Check_Type(event, T_STRING);
    if (!rb_obj_is_kind_of(handler, rb_cMethod) && !rb_obj_is_kind_of(handler, rb_cProc))
    {
        rb_raise(rb_eTypeError, "handler must be a Method or Proc");
    }

    AcPlayerScriptMgr::instance()->RegisterRubyHandler(StringValueCStr(event), handler);
    return self;
}

void Init_ac_player_script()
{
    std::cout << "Initializing AcPlayerScriptMgr..." << std::endl;

    VALUE rb_mAzerothCore = rb_define_module("AzerothCore");
    VALUE rb_cPlayerScript = rb_define_class_under(rb_mAzerothCore, "PlayerScriptCPP", rb_cObject);

    rb_define_singleton_method(rb_cPlayerScript, "register_handler", RUBY_METHOD_FUNC(rb_ac_player_script_register_handler), 2);

    // Register event info
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_login", {"Player*", "uint32*"});
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_logout", {"Player*"});
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_chat", {"Player*", "uint32*", "uint32*", "std::string*"});
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_level_up", {"Player*", "uint8*"});
}

// Explicitly instantiate the template for PlayerScript
template class ScriptRegistry<PlayerScript>;