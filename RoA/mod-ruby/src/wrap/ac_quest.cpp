#include "ac_quest.hpp"
#include <ruby.h>

// Undefine problematic macros again, just in case
#undef STRINGIZE
#undef uint128_t

#include "QuestDef.h"

VALUE rb_cAcQuest;

AcQuestWrapper::AcQuestWrapper(const Quest* quest) : m_quest(quest) {}

std::string AcQuestWrapper::GetTitle() const
{
    return m_quest ? m_quest->GetTitle() : "";
}

uint32_t AcQuestWrapper::GetQuestId() const
{
    return m_quest ? m_quest->GetQuestId() : 0;
}

int32_t AcQuestWrapper::GetQuestLevel() const
{
    return m_quest ? m_quest->GetQuestLevel() : 0;
}

bool AcQuestWrapper::IsRepeatable() const
{
    return m_quest ? m_quest->IsRepeatable() : false;
}

std::string AcQuestWrapper::GetObjectives() const
{
    return m_quest ? m_quest->GetObjectives() : "";
}

int32_t AcQuestWrapper::GetRewOrReqMoney() const
{
    return m_quest ? m_quest->GetRewOrReqMoney() : 0;
}

uint32_t AcQuestWrapper::GetRewXP() const
{
    return m_quest ? m_quest->XPValue() : 0;
}

uint32_t AcQuestWrapper::GetQuestMethod() const
{
    return m_quest ? m_quest->GetQuestMethod() : 0;
}

int32_t AcQuestWrapper::GetZoneOrSort() const
{
    return m_quest ? m_quest->GetZoneOrSort() : 0;
}

uint32_t AcQuestWrapper::GetMinLevel() const
{
    return m_quest ? m_quest->GetMinLevel() : 0;
}

uint32_t AcQuestWrapper::GetMaxLevel() const
{
    return m_quest ? m_quest->GetMaxLevel() : 0;
}

uint32_t AcQuestWrapper::GetType() const
{
    return m_quest ? m_quest->GetType() : 0;
}

uint32_t AcQuestWrapper::GetRequiredClasses() const
{
    return m_quest ? m_quest->GetRequiredClasses() : 0;
}

uint32_t AcQuestWrapper::GetAllowableRaces() const
{
    return m_quest ? m_quest->GetAllowableRaces() : 0;
}

uint32_t AcQuestWrapper::GetRequiredSkill() const
{
    return m_quest ? m_quest->GetRequiredSkill() : 0;
}

uint32_t AcQuestWrapper::GetRequiredSkillValue() const
{
    return m_quest ? m_quest->GetRequiredSkillValue() : 0;
}

uint32_t AcQuestWrapper::GetRepObjectiveFaction() const
{
    return m_quest ? m_quest->GetRepObjectiveFaction() : 0;
}

int32_t AcQuestWrapper::GetRepObjectiveValue() const
{
    return m_quest ? m_quest->GetRepObjectiveValue() : 0;
}

uint32_t AcQuestWrapper::GetRequiredMinRepFaction() const
{
    return m_quest ? m_quest->GetRequiredMinRepFaction() : 0;
}

int32_t AcQuestWrapper::GetRequiredMinRepValue() const
{
    return m_quest ? m_quest->GetRequiredMinRepValue() : 0;
}

uint32_t AcQuestWrapper::GetSuggestedPlayers() const
{
    return m_quest ? m_quest->GetSuggestedPlayers() : 0;
}

uint32_t AcQuestWrapper::GetTimeAllowed() const
{
    return m_quest ? m_quest->GetTimeAllowed() : 0;
}

uint32_t AcQuestWrapper::GetFlags() const
{
    return m_quest ? m_quest->GetFlags() : 0;
}

bool AcQuestWrapper::IsDaily() const
{
    return m_quest ? m_quest->IsDaily() : false;
}

bool AcQuestWrapper::IsWeekly() const
{
    return m_quest ? m_quest->IsWeekly() : false;
}

bool AcQuestWrapper::IsMonthly() const
{
    return m_quest ? m_quest->IsMonthly() : false;
}

bool AcQuestWrapper::IsSeasonal() const
{
    return m_quest ? m_quest->IsSeasonal() : false;
}

std::string AcQuestWrapper::GetDetails() const
{
    return m_quest ? m_quest->GetDetails() : "";
}

std::string AcQuestWrapper::GetAreaDescription() const
{
    return m_quest ? m_quest->GetAreaDescription() : "";
}

std::string AcQuestWrapper::GetCompletedText() const
{
    return m_quest ? m_quest->GetCompletedText() : "";
}

static VALUE rb_ac_quest_alloc(VALUE klass)
{
    AcQuestWrapper* wrapper = new AcQuestWrapper(nullptr);
    return Data_Wrap_Struct(klass, nullptr, [](void* ptr) { delete static_cast<AcQuestWrapper*>(ptr); }, wrapper);
}

static VALUE rb_ac_quest_initialize(VALUE self, VALUE rb_quest)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    const Quest* quest = nullptr;
    if (!NIL_P(rb_quest)) {
        Data_Get_Struct(rb_quest, Quest, quest);
    }
    new (wrapper) AcQuestWrapper(quest);
    return self;
}

static VALUE rb_ac_quest_get_title(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return rb_str_new2(wrapper->GetTitle().c_str());
}

static VALUE rb_ac_quest_get_quest_id(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetQuestId());
}

static VALUE rb_ac_quest_get_quest_level(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return INT2NUM(wrapper->GetQuestLevel());
}

static VALUE rb_ac_quest_is_repeatable(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return wrapper->IsRepeatable() ? Qtrue : Qfalse;
}

static VALUE rb_ac_quest_get_objectives(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return rb_str_new2(wrapper->GetObjectives().c_str());
}

static VALUE rb_ac_quest_get_reward_money(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return INT2NUM(wrapper->GetRewOrReqMoney());
}

static VALUE rb_ac_quest_get_reward_xp(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetRewXP());
}

static VALUE rb_ac_quest_get_quest_method(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetQuestMethod());
}

static VALUE rb_ac_quest_get_zone_or_sort(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return INT2NUM(wrapper->GetZoneOrSort());
}

static VALUE rb_ac_quest_get_min_level(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetMinLevel());
}

static VALUE rb_ac_quest_get_max_level(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetMaxLevel());
}

static VALUE rb_ac_quest_get_type(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetType());
}

static VALUE rb_ac_quest_get_required_classes(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetRequiredClasses());
}

static VALUE rb_ac_quest_get_allowable_races(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetAllowableRaces());
}

static VALUE rb_ac_quest_get_required_skill(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetRequiredSkill());
}

static VALUE rb_ac_quest_get_required_skill_value(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetRequiredSkillValue());
}

static VALUE rb_ac_quest_get_rep_objective_faction(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetRepObjectiveFaction());
}

static VALUE rb_ac_quest_get_rep_objective_value(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return INT2NUM(wrapper->GetRepObjectiveValue());
}

static VALUE rb_ac_quest_get_required_min_rep_faction(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetRequiredMinRepFaction());
}

static VALUE rb_ac_quest_get_required_min_rep_value(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return INT2NUM(wrapper->GetRequiredMinRepValue());
}

static VALUE rb_ac_quest_get_suggested_players(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetSuggestedPlayers());
}

static VALUE rb_ac_quest_get_time_allowed(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetTimeAllowed());
}

static VALUE rb_ac_quest_get_flags(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return UINT2NUM(wrapper->GetFlags());
}

static VALUE rb_ac_quest_is_daily(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return wrapper->IsDaily() ? Qtrue : Qfalse;
}

static VALUE rb_ac_quest_is_weekly(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return wrapper->IsWeekly() ? Qtrue : Qfalse;
}

static VALUE rb_ac_quest_is_monthly(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return wrapper->IsMonthly() ? Qtrue : Qfalse;
}

static VALUE rb_ac_quest_is_seasonal(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return wrapper->IsSeasonal() ? Qtrue : Qfalse;
}

static VALUE rb_ac_quest_get_details(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return rb_str_new2(wrapper->GetDetails().c_str());
}

static VALUE rb_ac_quest_get_area_description(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return rb_str_new2(wrapper->GetAreaDescription().c_str());
}

static VALUE rb_ac_quest_get_completed_text(VALUE self)
{
    AcQuestWrapper* wrapper;
    Data_Get_Struct(self, AcQuestWrapper, wrapper);
    return rb_str_new2(wrapper->GetCompletedText().c_str());
}

extern "C"
void Init_ac_quest()
{
    VALUE rb_mAzerothCore = rb_define_module("AzerothCore");

    rb_cAcQuest = rb_define_class_under(rb_mAzerothCore, "Quest", rb_cObject);
    rb_define_alloc_func(rb_cAcQuest, rb_ac_quest_alloc);
    rb_define_method(rb_cAcQuest, "initialize", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_initialize), 1);
    rb_define_method(rb_cAcQuest, "title", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_title), 0);
    rb_define_method(rb_cAcQuest, "quest_id", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_quest_id), 0);
    rb_define_method(rb_cAcQuest, "quest_level", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_quest_level), 0);
    rb_define_method(rb_cAcQuest, "repeatable?", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_is_repeatable), 0);
    rb_define_method(rb_cAcQuest, "objectives", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_objectives), 0);
    rb_define_method(rb_cAcQuest, "reward_money", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_reward_money), 0);
    rb_define_method(rb_cAcQuest, "reward_xp", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_reward_xp), 0);
    rb_define_method(rb_cAcQuest, "quest_method", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_quest_method), 0);
    rb_define_method(rb_cAcQuest, "zone_or_sort", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_zone_or_sort), 0);
    rb_define_method(rb_cAcQuest, "min_level", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_min_level), 0);
    rb_define_method(rb_cAcQuest, "max_level", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_max_level), 0);
    rb_define_method(rb_cAcQuest, "type", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_type), 0);
    rb_define_method(rb_cAcQuest, "required_classes", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_required_classes), 0);
    rb_define_method(rb_cAcQuest, "allowable_races", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_allowable_races), 0);
    rb_define_method(rb_cAcQuest, "required_skill", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_required_skill), 0);
    rb_define_method(rb_cAcQuest, "required_skill_value", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_required_skill_value), 0);
    rb_define_method(rb_cAcQuest, "rep_objective_faction", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_rep_objective_faction), 0);
    rb_define_method(rb_cAcQuest, "rep_objective_value", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_rep_objective_value), 0);
    rb_define_method(rb_cAcQuest, "required_min_rep_faction", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_required_min_rep_faction), 0);
    rb_define_method(rb_cAcQuest, "required_min_rep_value", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_required_min_rep_value), 0);
    rb_define_method(rb_cAcQuest, "suggested_players", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_suggested_players), 0);
    rb_define_method(rb_cAcQuest, "time_allowed", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_time_allowed), 0);
    rb_define_method(rb_cAcQuest, "flags", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_flags), 0);
    rb_define_method(rb_cAcQuest, "daily?", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_is_daily), 0);
    rb_define_method(rb_cAcQuest, "weekly?", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_is_weekly), 0);
    rb_define_method(rb_cAcQuest, "monthly?", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_is_monthly), 0);
    rb_define_method(rb_cAcQuest, "seasonal?", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_is_seasonal), 0);
    rb_define_method(rb_cAcQuest, "details", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_details), 0);
    rb_define_method(rb_cAcQuest, "area_description", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_area_description), 0);
    rb_define_method(rb_cAcQuest, "completed_text", reinterpret_cast<VALUE(*)(...)>(rb_ac_quest_get_completed_text), 0);
}