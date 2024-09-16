# frozen_string_literal: true

# == Schema Information
#
# Table name: lock_dbc
#
#  Action_1 :integer          default(0), not null
#  Action_2 :integer          default(0), not null
#  Action_3 :integer          default(0), not null
#  Action_4 :integer          default(0), not null
#  Action_5 :integer          default(0), not null
#  Action_6 :integer          default(0), not null
#  Action_7 :integer          default(0), not null
#  Action_8 :integer          default(0), not null
#  ID       :integer          default(0), not null, primary key
#  Index_1  :integer          default(0), not null
#  Index_2  :integer          default(0), not null
#  Index_3  :integer          default(0), not null
#  Index_4  :integer          default(0), not null
#  Index_5  :integer          default(0), not null
#  Index_6  :integer          default(0), not null
#  Index_7  :integer          default(0), not null
#  Index_8  :integer          default(0), not null
#  Skill_1  :integer          default(0), not null
#  Skill_2  :integer          default(0), not null
#  Skill_3  :integer          default(0), not null
#  Skill_4  :integer          default(0), not null
#  Skill_5  :integer          default(0), not null
#  Skill_6  :integer          default(0), not null
#  Skill_7  :integer          default(0), not null
#  Skill_8  :integer          default(0), not null
#  Type_1   :integer          default(0), not null
#  Type_2   :integer          default(0), not null
#  Type_3   :integer          default(0), not null
#  Type_4   :integer          default(0), not null
#  Type_5   :integer          default(0), not null
#  Type_6   :integer          default(0), not null
#  Type_7   :integer          default(0), not null
#  Type_8   :integer          default(0), not null
#
module World
  class LockDbc < WorldApplicationRecord
    self.table_name = 'lock_dbc'
    self.primary_key = :ID
  end
end
