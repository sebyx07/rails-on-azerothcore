#ifndef AC_WORLD_SESSION_H
#define AC_WORLD_SESSION_H

#include "Define.h"
#include "WorldSession.h"

#include "../rice.hpp"
using namespace Rice;

class AcWorldSessionWrapper
{
private:
    WorldSession* m_session;

public:
    AcWorldSessionWrapper(WorldSession* session);

    uint32 GetAccountId() const;
    std::string GetPlayerName() const;
    uint8 GetExpansion() const;
    void KickPlayer();
};

// Declaration for the initialization function
extern "C" void Init_ac_world_session();

#endif // AC_WORLD_SESSION_H
