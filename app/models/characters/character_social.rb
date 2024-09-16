# frozen_string_literal: true

# == Schema Information
#
# Table name: character_social
#
#  flags(Friend Flags)                      :integer          default(0), unsigned, not null, primary key
#  friend(Friend Global Unique Identifier)  :integer          default(0), unsigned, not null, primary key
#  guid(Character Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  note(Friend Note)                        :string(48)       default(""), not null
#
# Indexes
#
#  friend  (friend)
#
module Characters
  class CharacterSocial < CharactersApplicationRecord
    self.table_name = 'character_social'
    self.primary_key = %i[flags friend guid]
  end
end
