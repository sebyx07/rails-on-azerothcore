# frozen_string_literal: true

# == Schema Information
#
# Table name: character_battleground_random
#
#  guid :integer          default(0), unsigned, not null, primary key
#
module Characters
  class CharacterBattlegroundRandom < CharactersApplicationRecord
    self.table_name = 'character_battleground_random'
    self.primary_key = :guid
  end
end
