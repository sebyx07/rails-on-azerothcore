# frozen_string_literal: true

# == Schema Information
#
# Table name: talent_dbc
#
#  CategoryMask_1  :integer          default(0), not null
#  CategoryMask_2  :integer          default(0), not null
#  ColumnIndex     :integer          default(0), not null
#  Flags           :integer          default(0), not null
#  ID              :integer          default(0), not null, primary key
#  PrereqRank_1    :integer          default(0), not null
#  PrereqRank_2    :integer          default(0), not null
#  PrereqRank_3    :integer          default(0), not null
#  PrereqTalent_1  :integer          default(0), not null
#  PrereqTalent_2  :integer          default(0), not null
#  PrereqTalent_3  :integer          default(0), not null
#  RequiredSpellID :integer          default(0), not null
#  SpellRank_1     :integer          default(0), not null
#  SpellRank_2     :integer          default(0), not null
#  SpellRank_3     :integer          default(0), not null
#  SpellRank_4     :integer          default(0), not null
#  SpellRank_5     :integer          default(0), not null
#  SpellRank_6     :integer          default(0), not null
#  SpellRank_7     :integer          default(0), not null
#  SpellRank_8     :integer          default(0), not null
#  SpellRank_9     :integer          default(0), not null
#  TabID           :integer          default(0), not null
#  TierID          :integer          default(0), not null
#
module World
  class TalentDbc < WorldApplicationRecord
    self.table_name = 'talent_dbc'
    self.primary_key = 'ID'
  end
end
