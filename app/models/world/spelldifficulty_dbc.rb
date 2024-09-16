# frozen_string_literal: true

# == Schema Information
#
# Table name: spelldifficulty_dbc
#
#  DifficultySpellID_1 :integer          default(0), not null
#  DifficultySpellID_2 :integer          default(0), not null
#  DifficultySpellID_3 :integer          default(0), not null
#  DifficultySpellID_4 :integer          default(0), unsigned, not null
#  ID                  :integer          default(0), not null, primary key
#
module World
  class SpelldifficultyDbc < WorldApplicationRecord
    self.table_name = 'spelldifficulty_dbc'
    self.primary_key = 'ID'
  end
end
