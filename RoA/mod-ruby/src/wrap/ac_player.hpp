#ifndef AC_PLAYER_H
#define AC_PLAYER_H

#include "Define.h"
#include "Player.h"
#include "Chat.h"
#include <ruby.h>
#include <memory>

class AcPlayerWrapper
{
private:
    Player* m_player;

public:
    AcPlayerWrapper(Player* player);
    Player* GetPlayer() const { return m_player; }

    std::string GetName() const;
    uint32 GetLevel() const;
    void SetLevel(uint32 level);
    void SendMessage(const std::string& message, const std::string& prefix = "System") const;
    AcPlayerWrapper& IncreaseLevel(uint32 amount = 1);
    uint32 GetAccountId() const;
};

extern VALUE rb_cAcPlayer;

extern "C" void Init_ac_player();

#endif // AC_PLAYER_H
