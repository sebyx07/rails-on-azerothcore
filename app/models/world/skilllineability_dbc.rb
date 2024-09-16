# frozen_string_literal: true

# == Schema Information
#
# Table name: skilllineability_dbc
#
#  AcquireMethod            :integer          default(0), not null
#  CharacterPoints_1        :integer          default(0), not null
#  CharacterPoints_2        :integer          default(0), not null
#  ClassMask                :integer          default(0), not null
#  ExcludeClass             :integer          default(0), not null
#  ExcludeRace              :integer          default(0), not null
#  ID                       :integer          default(0), not null, primary key
#  MinSkillLineRank         :integer          default(0), not null
#  RaceMask                 :integer          default(0), not null
#  SkillLine                :integer          default(0), not null
#  Spell                    :integer          default(0), not null
#  SupercededBySpell        :integer          default(0), not null
#  TrivialSkillLineRankHigh :integer          default(0), not null
#  TrivialSkillLineRankLow  :integer          default(0), not null
#
module World
  class SkilllineabilityDbc < WorldApplicationRecord
    self.table_name = 'skilllineability_dbc'
    self.primary_key = 'ID'
  end
end
