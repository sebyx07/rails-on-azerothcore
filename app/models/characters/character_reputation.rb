# frozen_string_literal: true

# == Schema Information
#
# Table name: character_reputation
#
#  faction                        :integer          default(0), unsigned, not null, primary key
#  flags                          :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  standing                       :integer          default(0), not null
#
module Characters
  class CharacterReputation < CharactersApplicationRecord
    self.table_name = 'character_reputation'
    self.primary_key = %i[faction guid]
  end
end
