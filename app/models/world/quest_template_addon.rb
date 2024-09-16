# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_template_addon
#
#  AllowableClasses      :integer          default(0), unsigned, not null
#  ExclusiveGroup        :integer          default(0), not null
#  ID                    :integer          default(0), unsigned, not null, primary key
#  MaxLevel              :integer          default(0), unsigned, not null
#  NextQuestID           :integer          default(0), unsigned, not null
#  PrevQuestID           :integer          default(0), not null
#  ProvidedItemCount     :integer          default(0), unsigned, not null
#  RequiredMaxRepFaction :integer          default(0), unsigned, not null
#  RequiredMaxRepValue   :integer          default(0), not null
#  RequiredMinRepFaction :integer          default(0), unsigned, not null
#  RequiredMinRepValue   :integer          default(0), not null
#  RequiredSkillID       :integer          default(0), unsigned, not null
#  RequiredSkillPoints   :integer          default(0), unsigned, not null
#  RewardMailDelay       :integer          default(0), unsigned, not null
#  RewardMailTemplateID  :integer          default(0), unsigned, not null
#  SourceSpellID         :integer          default(0), unsigned, not null
#  SpecialFlags          :integer          default(0), unsigned, not null
#
module World
  class QuestTemplateAddon < WorldApplicationRecord
    self.table_name = 'quest_template_addon'
    self.primary_key = 'ID'
  end
end
