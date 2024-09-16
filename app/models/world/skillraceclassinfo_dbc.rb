# frozen_string_literal: true

# == Schema Information
#
# Table name: skillraceclassinfo_dbc
#
#  ClassMask      :integer          default(0), not null
#  Flags          :integer          default(0), not null
#  ID             :integer          default(0), not null, primary key
#  MinLevel       :integer          default(0), not null
#  RaceMask       :integer          default(0), not null
#  SkillCostIndex :integer          default(0), not null
#  SkillID        :integer          default(0), not null
#  SkillTierID    :integer          default(0), not null
#
module World
  class SkillraceclassinfoDbc < WorldApplicationRecord
    self.table_name = 'skillraceclassinfo_dbc'
    self.primary_key = 'ID'
  end
end
