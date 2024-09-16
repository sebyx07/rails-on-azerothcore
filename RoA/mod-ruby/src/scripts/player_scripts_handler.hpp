#ifndef PLAYER_SCRIPTS_HANDLER_HPP
#define PLAYER_SCRIPTS_HANDLER_HPP

#include "ScriptMgr.h"
#include "Player.h"
#include "ac_player.hpp"
#include "ruby_vm.hpp"
#include <ruby.h>

class AcPlayerScriptsHandler : public PlayerScript
{
public:
    AcPlayerScriptsHandler();
    void OnLogin(Player* player) override;
};

// Function to add all player scripts
void AcAddPlayerScriptsHandler();

#endif // PLAYER_SCRIPTS_HANDLER_HPP
