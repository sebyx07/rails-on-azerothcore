#include "ac_player.hpp"
#include <iostream>

VALUE rb_cAcPlayer;

AcPlayerWrapper::AcPlayerWrapper(Player* player) : m_player(player) {}

std::string AcPlayerWrapper::GetName() const
{
    return m_player->GetName();
}

uint32 AcPlayerWrapper::GetLevel() const
{
    return m_player->GetLevel();
}

void AcPlayerWrapper::SetLevel(uint32 level)
{
    m_player->SetLevel(level);
}

void AcPlayerWrapper::SendMessage(const std::string& message, const std::string& prefix) const
{
    if (m_player && m_player->GetSession())
    {
        std::string fullMessage = prefix + ": " + message;
        ChatHandler(m_player->GetSession()).PSendSysMessage(fullMessage.c_str());
    }
    else
    {
        std::cerr << "Error: Unable to send message. Player or session is null." << std::endl;
    }
}

AcPlayerWrapper& AcPlayerWrapper::IncreaseLevel(uint32 amount)
{
    m_player->SetLevel(m_player->GetLevel() + amount);
    return *this;
}

uint32 AcPlayerWrapper::GetAccountId() const
{
    return m_player->GetSession()->GetAccountId();
}

std::shared_ptr<AcAccountWrapper> AcPlayerWrapper::GetAccount() const
{
    uint32 accountId = GetAccountId();
    return std::make_shared<AcAccountWrapper>(accountId);
}

static VALUE rb_ac_player_alloc(VALUE klass)
{
    AcPlayerWrapper* wrapper = new AcPlayerWrapper(nullptr);
    return Data_Wrap_Struct(klass, nullptr, [](void* ptr) { delete static_cast<AcPlayerWrapper*>(ptr); }, wrapper);
}

static VALUE rb_ac_player_initialize(VALUE self, VALUE rb_player)
{
    AcPlayerWrapper* wrapper;
    Data_Get_Struct(self, AcPlayerWrapper, wrapper);
    Player* player = nullptr;
    if (!NIL_P(rb_player)) {
        Data_Get_Struct(rb_player, Player, player);
    }
    new (wrapper) AcPlayerWrapper(player);
    return self;
}

static VALUE rb_ac_player_get_name(VALUE self)
{
    AcPlayerWrapper* wrapper;
    Data_Get_Struct(self, AcPlayerWrapper, wrapper);
    return rb_str_new2(wrapper->GetName().c_str());
}

static VALUE rb_ac_player_get_level(VALUE self)
{
    AcPlayerWrapper* wrapper;
    Data_Get_Struct(self, AcPlayerWrapper, wrapper);
    return INT2NUM(wrapper->GetLevel());
}

static VALUE rb_ac_player_set_level(VALUE self, VALUE level)
{
    AcPlayerWrapper* wrapper;
    Data_Get_Struct(self, AcPlayerWrapper, wrapper);

    Player* player = wrapper->GetPlayer();

    uint8 newLevel = NUM2UINT(level);

    player->SetLevel(newLevel);

    player->SetUInt32Value(PLAYER_XP, 0);

    player->UpdateSkillsForLevel();
    player->InitTalentForLevel();

    player->SaveToDB(false, false);

    return UINT2NUM(newLevel);
}

static VALUE rb_ac_player_send_message(int argc, VALUE* argv, VALUE self)
{
    AcPlayerWrapper* wrapper;
    Data_Get_Struct(self, AcPlayerWrapper, wrapper);
    VALUE message, prefix;
    rb_scan_args(argc, argv, "11", &message, &prefix);
    wrapper->SendMessage(StringValueCStr(message), NIL_P(prefix) ? "System" : StringValueCStr(prefix));
    return Qnil;
}

static VALUE rb_ac_player_increase_level(int argc, VALUE* argv, VALUE self)
{
    AcPlayerWrapper* wrapper;
    Data_Get_Struct(self, AcPlayerWrapper, wrapper);
    VALUE amount;
    rb_scan_args(argc, argv, "01", &amount);
    wrapper->IncreaseLevel(NIL_P(amount) ? 1 : NUM2UINT(amount));
    return self;
}

static VALUE rb_ac_player_get_account_id(VALUE self)
{
    AcPlayerWrapper* wrapper;
    Data_Get_Struct(self, AcPlayerWrapper, wrapper);
    return UINT2NUM(wrapper->GetAccountId());
}

static VALUE rb_ac_player_get_account(VALUE self)
{
    AcPlayerWrapper* wrapper;
    Data_Get_Struct(self, AcPlayerWrapper, wrapper);

    std::shared_ptr<AcAccountWrapper>* accountWrapper = new std::shared_ptr<AcAccountWrapper>(wrapper->GetAccount());

    VALUE account = Data_Wrap_Struct(rb_cAcAccount, nullptr, [](void* ptr) {
        delete static_cast<std::shared_ptr<AcAccountWrapper>*>(ptr);
    }, accountWrapper);

    rb_iv_set(account, "@player", self); // Keep a reference to the player to prevent GC

    return account;
}

extern "C"
void Init_ac_player()
{
    std::cout << "Initializing AcPlayerWrapper..." << std::endl;

    VALUE rb_mAzerothCore = rb_define_module("AzerothCore");

    rb_cAcPlayer = rb_define_class_under(rb_mAzerothCore, "Player", rb_cObject);
    rb_define_alloc_func(rb_cAcPlayer, rb_ac_player_alloc);
    rb_define_method(rb_cAcPlayer, "initialize", reinterpret_cast<VALUE(*)(...)>(rb_ac_player_initialize), 1);
    rb_define_method(rb_cAcPlayer, "name", reinterpret_cast<VALUE(*)(...)>(rb_ac_player_get_name), 0);
    rb_define_method(rb_cAcPlayer, "level", reinterpret_cast<VALUE(*)(...)>(rb_ac_player_get_level), 0);
    rb_define_method(rb_cAcPlayer, "level=", reinterpret_cast<VALUE(*)(...)>(rb_ac_player_set_level), 1);
    rb_define_method(rb_cAcPlayer, "send_message", reinterpret_cast<VALUE(*)(...)>(rb_ac_player_send_message), -1);
    rb_define_method(rb_cAcPlayer, "increase_level!", reinterpret_cast<VALUE(*)(...)>(rb_ac_player_increase_level), -1);
    rb_define_method(rb_cAcPlayer, "account_id", reinterpret_cast<VALUE(*)(...)>(rb_ac_player_get_account_id), 0);
    rb_define_method(rb_cAcPlayer, "account", reinterpret_cast<VALUE(*)(...)>(rb_ac_player_get_account), 0);
}
