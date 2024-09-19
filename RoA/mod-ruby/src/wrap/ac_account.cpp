#include "ac_account.hpp"
#include <iostream>

VALUE rb_cAcAccount;

AcAccountWrapper::AcAccountWrapper(uint32 accountId) : m_accountId(accountId) {}

std::string AcAccountWrapper::GetUsername() const
{
    QueryResult result = LoginDatabase.Query("SELECT username FROM account WHERE id = {}", m_accountId);
    if (result)
    {
        Field* fields = result->Fetch();
        return fields[0].Get<std::string>();
    }
    return "";
}

uint8 AcAccountWrapper::GetSecurity() const
{
    QueryResult result = LoginDatabase.Query("SELECT gmlevel FROM account WHERE id = {}", m_accountId);
    if (result)
    {
        Field* fields = result->Fetch();
        return fields[0].Get<uint8>();
    }
    return 0;
}

void AcAccountWrapper::SetSecurity(uint8 security)
{
    LoginDatabase.Execute("UPDATE account SET gmlevel = {} WHERE id = {}", security, m_accountId);
}

AcAccountWrapper* AcAccountWrapper::Find(uint32 id)
{
    QueryResult result = LoginDatabase.Query("SELECT 1 FROM account WHERE id = {}", id);
    return result ? new AcAccountWrapper(id) : nullptr;
}

static VALUE rb_ac_account_alloc(VALUE klass)
{
    AcAccountWrapper* wrapper = new AcAccountWrapper(0);
    return Data_Wrap_Struct(klass, nullptr, [](void* ptr) { delete static_cast<AcAccountWrapper*>(ptr); }, wrapper);
}

static VALUE rb_ac_account_initialize(VALUE self, VALUE rb_account_id)
{
    AcAccountWrapper* wrapper;
    Data_Get_Struct(self, AcAccountWrapper, wrapper);
    uint32 accountId = NUM2UINT(rb_account_id);
    new (wrapper) AcAccountWrapper(accountId);
    return self;
}

static VALUE rb_ac_account_get_id(VALUE self)
{
    AcAccountWrapper* wrapper;
    Data_Get_Struct(self, AcAccountWrapper, wrapper);
    return UINT2NUM(wrapper->GetId());
}

static VALUE rb_ac_account_get_username(VALUE self)
{
    AcAccountWrapper* wrapper;
    Data_Get_Struct(self, AcAccountWrapper, wrapper);
    return rb_str_new2(wrapper->GetUsername().c_str());
}

static VALUE rb_ac_account_get_security(VALUE self)
{
    AcAccountWrapper* wrapper;
    Data_Get_Struct(self, AcAccountWrapper, wrapper);
    return INT2NUM(wrapper->GetSecurity());
}

static VALUE rb_ac_account_set_security(VALUE self, VALUE security)
{
    AcAccountWrapper* wrapper;
    Data_Get_Struct(self, AcAccountWrapper, wrapper);
    wrapper->SetSecurity(NUM2UINT(security));
    return security;
}

static VALUE rb_ac_account_find(VALUE klass, VALUE id)
{
    AcAccountWrapper* wrapper = AcAccountWrapper::Find(NUM2UINT(id));
    if (wrapper) {
        return Data_Wrap_Struct(klass, nullptr, [](void* ptr) { delete static_cast<AcAccountWrapper*>(ptr); }, wrapper);
    }
    return Qnil;
}

extern "C"
void Init_ac_account()
{
    VALUE rb_mAzerothCore = rb_define_module("AzerothCore");

    rb_cAcAccount = rb_define_class_under(rb_mAzerothCore, "Account", rb_cObject);
    rb_define_alloc_func(rb_cAcAccount, rb_ac_account_alloc);
    rb_define_method(rb_cAcAccount, "initialize", reinterpret_cast<VALUE(*)(...)>(rb_ac_account_initialize), 1);
    rb_define_method(rb_cAcAccount, "id", reinterpret_cast<VALUE(*)(...)>(rb_ac_account_get_id), 0);
    rb_define_method(rb_cAcAccount, "username", reinterpret_cast<VALUE(*)(...)>(rb_ac_account_get_username), 0);
    rb_define_method(rb_cAcAccount, "security", reinterpret_cast<VALUE(*)(...)>(rb_ac_account_get_security), 0);
    rb_define_method(rb_cAcAccount, "security=", reinterpret_cast<VALUE(*)(...)>(rb_ac_account_set_security), 1);
    rb_define_singleton_method(rb_cAcAccount, "find", reinterpret_cast<VALUE(*)(...)>(rb_ac_account_find), 1);
}
