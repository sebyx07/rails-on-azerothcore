# frozen_string_literal: true

# == Schema Information
#
# Table name: skill_fishing_base_level
#
#  entry(Area identifier)              :integer          default(0), unsigned, not null, primary key
#  skill(Base skill level requirement) :integer          default(0), not null
#
module World
  class SkillFishingBaseLevel < WorldApplicationRecord
    self.table_name = 'skill_fishing_base_level'
    self.primary_key = 'entry'
  end
end
