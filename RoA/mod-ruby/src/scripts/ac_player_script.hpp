#ifndef AC_PLAYER_SCRIPT_HPP
#define AC_PLAYER_SCRIPT_HPP

#include "ScriptMgr.h"
#include <ruby.h>
#include <map>
#include <vector>
#include <string>

class Player;

class AcPlayerScriptMgr : public PlayerScript
{
public:
    static AcPlayerScriptMgr* instance();

    void OnLogin(Player* player) override;
    void OnLogout(Player* player) override;
    void OnLevelChanged(Player* player, uint8 oldLevel) override;
    void OnChat(Player* player, uint32 type, uint32 lang, std::string& msg) override;

    void RegisterRubyHandler(const char* event, VALUE handler);
    void UnregisterRubyHandler(const char* event, VALUE handler);
    void RegisterEventInfo(const char* event, const std::vector<std::string>& argTypes);

private:
    AcPlayerScriptMgr();
    AcPlayerScriptMgr(const AcPlayerScriptMgr&) = delete;
    AcPlayerScriptMgr& operator=(const AcPlayerScriptMgr&) = delete;

    template<typename... Args>
    void CallRubyHandlers(const char* event, Args... args);

    VALUE ConvertToRuby(const void* ptr, const std::string& type);

    struct EventInfo {
        std::vector<std::string> argTypes;
    };

    std::map<std::string, std::vector<VALUE>> m_rubyHandlers;
    std::map<std::string, EventInfo> m_eventInfo;
};

void Init_ac_player_script();

#endif // AC_PLAYER_SCRIPT_HPP