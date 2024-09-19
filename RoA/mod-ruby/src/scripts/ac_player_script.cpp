#include "ac_player_script.hpp"
#include "Player.h"
#include "Chat.h"
#include "Config.h"
#include <ruby/encoding.h>
#include "ObjectAccessor.h"
#include "ac_account.hpp"
#include "ac_player.hpp"

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
    uint32 accountId = player->GetSession() ? player->GetSession()->GetAccountId() : 0;
    CallRubyHandlers("on_login", player, &accountId);
}

void AcPlayerScriptMgr::OnLogout(Player* player)
{
    CallRubyHandlers("on_logout", player);
}

void AcPlayerScriptMgr::OnChat(Player* player, uint32 type, uint32 lang, std::string& msg)
{
    std::cout << "OnChat event triggered:" << std::endl;
    std::cout << "Player: " << player->GetName() << std::endl;
    std::cout << "Type: " << type << std::endl;
    std::cout << "Language: " << lang << std::endl;
    std::cout << "Message: " << msg << std::endl;
}

void AcPlayerScriptMgr::OnLevelChanged(Player* player, uint8 oldLevel)
{
    CallRubyHandlers("on_level_up", player, &oldLevel);
}

void AcPlayerScriptMgr::RegisterRubyHandler(const char* event, VALUE handler)
{
    m_rubyHandlers[event].push_back(handler);
}

void AcPlayerScriptMgr::UnregisterRubyHandler(const char* event, VALUE handler)
{
    auto it = m_rubyHandlers.find(event);
    if (it != m_rubyHandlers.end())
    {
        auto& handlers = it->second;
        handlers.erase(std::remove(handlers.begin(), handlers.end(), handler), handlers.end());
    }
}

void AcPlayerScriptMgr::RegisterEventInfo(const char* event, const std::vector<std::string>& argTypes)
{
    m_eventInfo[event] = EventInfo{argTypes};
}

template<typename... Args>
void AcPlayerScriptMgr::CallRubyHandlers(const char* event, Args... args)
{
    auto handlerIt = m_rubyHandlers.find(event);
    auto eventInfoIt = m_eventInfo.find(event);

    if (handlerIt == m_rubyHandlers.end() || eventInfoIt == m_eventInfo.end())
    {
        std::cerr << "No handlers or event info found for event: " << event << std::endl;
        return;
    }

    const auto& argTypes = eventInfoIt->second.argTypes;
    std::vector<const void*> argPtrs = {static_cast<const void*>(&args)...};

    if (argTypes.size() != argPtrs.size())
    {
        std::cerr << "Argument count mismatch for event: " << event
                  << ". Expected: " << argTypes.size()
                  << ", Got: " << argPtrs.size() << std::endl;
        return;
    }

    std::vector<VALUE> rubyArgs;
    for (size_t i = 0; i < argTypes.size(); ++i)
    {
        if (argTypes[i] == "std::string*") {
            const std::string* str = static_cast<const std::string*>(argPtrs[i]);
            if (str == nullptr) {
                std::cout << "String pointer is null" << std::endl;
            }
        }

        VALUE arg = Qnil;
        try {
            arg = ConvertToRuby(argPtrs[i], argTypes[i]);
        } catch (const std::exception& e) {
            std::cerr << "Exception in ConvertToRuby for argument " << i
                      << " of type " << argTypes[i] << ": " << e.what() << std::endl;
            return;
        }

        if (arg == Qnil && argPtrs[i] != nullptr)
        {
            std::cerr << "Failed to convert argument " << i
                      << " of type " << argTypes[i]
                      << " for event: " << event << std::endl;
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
            VALUE backtrace = rb_funcall(exception, rb_intern("backtrace"), 0);
            std::cerr << "Ruby exception in event " << event << ": "
                      << StringValueCStr(message) << std::endl;

            if (!NIL_P(backtrace))
            {
                long backtrace_length = RARRAY_LEN(backtrace);
                for (long i = 0; i < backtrace_length; ++i)
                {
                    VALUE backtrace_line = rb_ary_entry(backtrace, i);
                    std::cerr << "  " << StringValueCStr(backtrace_line) << std::endl;
                }
            }

            rb_set_errinfo(Qnil);
        }
    }
}

VALUE AcPlayerScriptMgr::ConvertToRuby(const void* ptr, const std::string& type)
{
    if (!ptr) {
        std::cerr << "ConvertToRuby: Null pointer for type " << type << std::endl;
        return Qnil;
    }

    try {
        if (type == "Player*")
        {
            Player* player = const_cast<Player*>(static_cast<const Player*>(ptr));
            if (!player) {
                std::cerr << "ConvertToRuby: Null Player pointer" << std::endl;
                return Qnil;
            }
            return Data_Wrap_Struct(rb_cAcPlayer, nullptr, nullptr, player);
        }
        else if (type == "uint32*")
        {
            return UINT2NUM(*static_cast<const uint32*>(ptr));
        }
        else if (type == "const char*")
        {
            const char* cstr = static_cast<const char*>(ptr);
            if (!cstr) {
                std::cerr << "ConvertToRuby: Null C-string pointer" << std::endl;
                return Qnil;
            }
            return rb_str_new_cstr(cstr);
        }
        else if (type == "std::string*")
        {
            const std::string* str = static_cast<const std::string*>(ptr);
            if (!str) {
                std::cerr << "ConvertToRuby: Null string pointer" << std::endl;
                return Qnil;
            }
            // Create a new Ruby string with the content, replacing invalid UTF-8 sequences
            return rb_str_new(str->c_str(), str->length());
        }
        else if (type == "uint8*")
        {
            return UINT2NUM(*static_cast<const uint8*>(ptr));
        }
    } catch (const std::exception& e) {
        std::cerr << "Exception in ConvertToRuby for type " << type << ": " << e.what() << std::endl;
        return Qnil;
    } catch (...) {
        std::cerr << "Unknown exception in ConvertToRuby for type " << type << std::endl;
        return Qnil;
    }

    std::cerr << "Unknown type for conversion: " << type << std::endl;
    return Qnil;
}

// Explicit template instantiations
template void AcPlayerScriptMgr::CallRubyHandlers(const char*, Player*);
template void AcPlayerScriptMgr::CallRubyHandlers(const char*, Player*, uint32*);
template void AcPlayerScriptMgr::CallRubyHandlers(const char*, Player*, uint32*, uint32*, std::string*);
template void AcPlayerScriptMgr::CallRubyHandlers(const char*, Player*, uint8*);

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

static VALUE rb_ac_player_script_unregister_handler(VALUE self, VALUE event, VALUE handler)
{
    Check_Type(event, T_STRING);
    if (!rb_obj_is_kind_of(handler, rb_cMethod) && !rb_obj_is_kind_of(handler, rb_cProc))
    {
        rb_raise(rb_eTypeError, "handler must be a Method or Proc");
    }

    AcPlayerScriptMgr::instance()->UnregisterRubyHandler(StringValueCStr(event), handler);
    return self;
}

void Init_ac_player_script()
{
    VALUE rb_mAzerothCore = rb_define_module("AzerothCore");
    VALUE rb_cPlayerScript = rb_define_class_under(rb_mAzerothCore, "PlayerScriptCPP", rb_cObject);

    rb_define_singleton_method(rb_cPlayerScript, "register_handler", RUBY_METHOD_FUNC(rb_ac_player_script_register_handler), 2);
    rb_define_singleton_method(rb_cPlayerScript, "unregister_handler", RUBY_METHOD_FUNC(rb_ac_player_script_unregister_handler), 2);

    // Register event info
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_login", {"Player*", "uint32*"});
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_logout", {"Player*"});
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_level_up", {"Player*", "uint8*"});
}