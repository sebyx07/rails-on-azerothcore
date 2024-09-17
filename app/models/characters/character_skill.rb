# frozen_string_literal: true

# == Schema Information
#
# Table name: character_skills
#
#  guid(Global Unique Identifier) :integer          unsigned, not null, primary key
#  max                            :integer          unsigned, not null
#  skill                          :integer          unsigned, not null, primary key
#  value                          :integer          unsigned, not null
#
module Characters
  class CharacterSkill < CharactersApplicationRecord
    self.table_name = 'character_skills'
    self.primary_key = %i[guid skill]
  end
end
