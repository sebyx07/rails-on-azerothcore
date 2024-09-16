# frozen_string_literal: true

# == Schema Information
#
# Table name: questfactionreward_dbc
#
#  Difficulty_1  :integer          default(0), not null
#  Difficulty_10 :integer          default(0), not null
#  Difficulty_2  :integer          default(0), not null
#  Difficulty_3  :integer          default(0), not null
#  Difficulty_4  :integer          default(0), not null
#  Difficulty_5  :integer          default(0), not null
#  Difficulty_6  :integer          default(0), not null
#  Difficulty_7  :integer          default(0), not null
#  Difficulty_8  :integer          default(0), not null
#  Difficulty_9  :integer          default(0), not null
#  ID            :integer          default(0), not null, primary key
#
module World
  class QuestfactionrewardDbc < WorldApplicationRecord
    self.table_name = 'questfactionreward_dbc'
    self.primary_key = 'ID'
  end
end
