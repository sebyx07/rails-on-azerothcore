#ifndef AC_ACCOUNT_H
#define AC_ACCOUNT_H

#include "Define.h"
#include "DatabaseEnv.h"
#include "AccountMgr.h"
#include <ruby.h>
#include <string>

class AcAccountWrapper
{
private:
    uint32 m_accountId;

public:
    AcAccountWrapper(uint32 accountId);
    uint32 GetId() const { return m_accountId; }

    std::string GetUsername() const;
    uint8 GetSecurity() const;
    void SetSecurity(uint8 security);

    static AcAccountWrapper* Find(uint32 id);
};

extern VALUE rb_cAcAccount;

extern "C" void Init_ac_account();

#endif // AC_ACCOUNT_H
