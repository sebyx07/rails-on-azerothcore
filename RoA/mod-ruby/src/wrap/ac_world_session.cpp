#include "ac_world_session.hpp"

AcWorldSessionWrapper::AcWorldSessionWrapper(WorldSession* session) : m_session(session) {}

uint32 AcWorldSessionWrapper::GetAccountId() const
{
    return m_session->GetAccountId();
}

std::string AcWorldSessionWrapper::GetPlayerName() const
{
    return m_session->GetPlayerName();
}

uint8 AcWorldSessionWrapper::GetExpansion() const
{
    return m_session->Expansion();
}

void AcWorldSessionWrapper::KickPlayer()
{
    m_session->KickPlayer();
}

extern "C"
void Init_ac_world_session()
{
    Module rb_mAzerothCore = define_module("AzerothCore");

    Data_Type<WorldSession> rb_private_cWorldSession =
        define_class_under<WorldSession>(rb_mAzerothCore, "WorldSessionCPP");

    Data_Type<AcWorldSessionWrapper> rb_cWorldSession =
        define_class_under<AcWorldSessionWrapper>(rb_mAzerothCore, "WorldSession")
        .define_constructor(Constructor<AcWorldSessionWrapper, WorldSession*>())
        .define_method("account_id", &AcWorldSessionWrapper::GetAccountId)
        .define_method("player_name", &AcWorldSessionWrapper::GetPlayerName)
        .define_method("expansion", &AcWorldSessionWrapper::GetExpansion)
        .define_method("kick_player", &AcWorldSessionWrapper::KickPlayer);
}
