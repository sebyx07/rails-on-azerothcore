#include "ac_player_script.hpp"

VALUE ConvertToRuby(const void* ptr, const std::string& type)
{
    if (type == "Player*")
    {
        Player* player = const_cast<Player*>(static_cast<const Player*>(ptr));
        return Data_Wrap_Struct(rb_cObject, 0, 0, player);
    }
    else if (type == "AcAccountWrapper*")
    {
        AcAccountWrapper* account = const_cast<AcAccountWrapper*>(static_cast<const AcAccountWrapper*>(ptr));
        return Data_Wrap_Struct(rb_cAcAccount, nullptr, nullptr, account);
    }
    else if (type == "uint32")
    {
        return UINT2NUM(*static_cast<const uint32*>(ptr));
    }
    else if (type == "std::string")
    {
        const std::string& str = *static_cast<const std::string*>(ptr);
        return rb_str_new(str.c_str(), str.length());
    }
    else if (type == "uint8")
    {
        return UINT2NUM(*static_cast<const uint8*>(ptr));
    }
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
    AcAccountWrapper* accountWrapper = new AcAccountWrapper(player->GetSession()->GetAccountId());
    CallRubyHandlers("on_login", player, accountWrapper);
    delete accountWrapper;
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
            // Log an error or throw an exception
            return;
        }

        std::vector<VALUE> rubyArgs;
        for (size_t i = 0; i < argTypes.size(); ++i)
        {
            rubyArgs.push_back(ConvertToRuby(argPtrs[i], argTypes[i]));
        }

        for (VALUE handler : handlerIt->second)
        {
            rb_funcall2(handler, rb_intern("call"), rubyArgs.size(), rubyArgs.data());
        }
    }
}

static VALUE rb_ac_player_script_register_handler(VALUE self, VALUE event, VALUE handler)
{
    Check_Type(event, T_STRING);
    if (!rb_obj_is_kind_of(handler, rb_cMethod))
    {
        rb_raise(rb_eTypeError, "handler must be a Method");
    }

    AcPlayerScriptMgr::instance()->RegisterRubyHandler(StringValueCStr(event), handler);
    return self;
}

void Init_ac_player_script()
{
    VALUE rb_mAzerothCore = rb_define_module("AzerothCore");
    VALUE rb_cPlayerScript = rb_define_class_under(rb_mAzerothCore, "PlayerScriptCPP", rb_cObject);

    rb_define_singleton_method(rb_cPlayerScript, "register_handler", RUBY_METHOD_FUNC(rb_ac_player_script_register_handler), 2);

    // Register event info
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_login", {"Player*", "AcAccountWrapper*"});
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_logout", {"Player*"});
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_chat", {"Player*", "uint32", "uint32", "std::string"});
    AcPlayerScriptMgr::instance()->RegisterEventInfo("on_level_up", {"Player*", "uint8"});
}

void InitAcPlayerScriptSystem()
{
    // Ensure the AcPlayerScriptMgr instance is created
    AcPlayerScriptMgr::instance();
}

// Explicitly instantiate the template for PlayerScript
template class ScriptRegistry<PlayerScript>;