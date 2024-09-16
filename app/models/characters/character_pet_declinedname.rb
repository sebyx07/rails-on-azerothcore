# frozen_string_literal: true

# == Schema Information
#
# Table name: character_pet_declinedname
#
#  id            :integer          default(0), unsigned, not null, primary key
#  accusative    :string(12)       default(""), not null
#  dative        :string(12)       default(""), not null
#  genitive      :string(12)       default(""), not null
#  instrumental  :string(12)       default(""), not null
#  owner         :integer          default(0), unsigned, not null
#  prepositional :string(12)       default(""), not null
#
# Indexes
#
#  owner_key  (owner)
#
module Characters
  class CharacterPetDeclinedname < CharactersApplicationRecord
    self.table_name = 'character_pet_declinedname'
    self.primary_key = :id
  end
end
