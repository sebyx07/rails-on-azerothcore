#ifndef AC_QUEST_HPP
#define AC_QUEST_HPP

#include <string>
#include <cstdint>

// Undefine problematic macros
#undef STRINGIZE
#undef uint128_t

// Forward declare Ruby's VALUE to avoid including ruby.h here
#ifndef RUBY_VALUE_TYPE
#define RUBY_VALUE_TYPE
typedef unsigned long VALUE;
#endif

// Forward declare Quest class
class Quest;

class AcQuestWrapper
{
public:
    AcQuestWrapper(const Quest* quest);

    std::string GetTitle() const;
    uint32_t GetQuestId() const;
    int32_t GetQuestLevel() const;
    bool IsRepeatable() const;
    std::string GetObjectives() const;
    int32_t GetRewOrReqMoney() const;
    uint32_t GetRewXP() const;

    // New methods
    uint32_t GetQuestMethod() const;
    int32_t GetZoneOrSort() const;
    uint32_t GetMinLevel() const;
    uint32_t GetMaxLevel() const;
    uint32_t GetType() const;
    uint32_t GetRequiredClasses() const;
    uint32_t GetAllowableRaces() const;
    uint32_t GetRequiredSkill() const;
    uint32_t GetRequiredSkillValue() const;
    uint32_t GetRepObjectiveFaction() const;
    int32_t GetRepObjectiveValue() const;
    uint32_t GetRequiredMinRepFaction() const;
    int32_t GetRequiredMinRepValue() const;
    uint32_t GetSuggestedPlayers() const;
    uint32_t GetTimeAllowed() const;
    uint32_t GetFlags() const;
    bool IsDaily() const;
    bool IsWeekly() const;
    bool IsMonthly() const;
    bool IsSeasonal() const;
    std::string GetDetails() const;
    std::string GetAreaDescription() const;
    std::string GetCompletedText() const;

    const Quest* GetQuest() const { return m_quest; }

private:
    const Quest* m_quest;
};

extern "C" {
    void Init_ac_quest();
}

extern VALUE rb_cAcQuest;

#endif // AC_QUEST_HPP