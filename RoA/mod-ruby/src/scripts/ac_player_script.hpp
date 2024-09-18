#ifndef AC_PLAYER_SCRIPT_HPP
#define AC_PLAYER_SCRIPT_HPP

#include "ScriptMgr.h"
#include "Player.h"
#include "Chat.h"
#include "Config.h"
#include "ruby.h"
#include "ruby/encoding.h"
#include "ObjectAccessor.h"
#include "ac_account.hpp"
#include "ac_player.hpp"
#include <unordered_map>
#include <vector>
#include <string>

struct EventInfo
{
    std::vector<std::string> argTypes;
};

class AcPlayerScriptMgr : public PlayerScript
{
public:
    AcPlayerScriptMgr();
    static AcPlayerScriptMgr* instance();

    // Override PlayerScript virtual methods
    void OnLogin(Player* player) override;
    void OnLogout(Player* player) override;
    void OnLevelChanged(Player* player, uint8 oldLevel) override;

    // Ruby integration methods
    void RegisterRubyHandler(const char* event, VALUE handler);
    void RegisterEventInfo(const char* event, const std::vector<std::string>& argTypes);

private:
    std::unordered_map<std::string, std::vector<VALUE>> m_rubyHandlers;
    std::unordered_map<std::string, EventInfo> m_eventInfo;

    template<typename... Args>
    void CallRubyHandlers(const char* event, Args... args);

    VALUE ConvertToRuby(const void* ptr, const std::string& type);
};

// Ruby initialization functions
void Init_ac_player_script();

#endif // AC_PLAYER_SCRIPT_HPP