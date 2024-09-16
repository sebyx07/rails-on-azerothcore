# frozen_string_literal: true

# == Schema Information
#
# Table name: character_declinedname
#
#  accusative                     :string(15)       default(""), not null
#  dative                         :string(15)       default(""), not null
#  genitive                       :string(15)       default(""), not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  instrumental                   :string(15)       default(""), not null
#  prepositional                  :string(15)       default(""), not null
#
module Characters
  class CharacterDeclinedname < CharactersApplicationRecord
    self.table_name = 'character_declinedname'
    self.primary_key = :guid
  end
end
