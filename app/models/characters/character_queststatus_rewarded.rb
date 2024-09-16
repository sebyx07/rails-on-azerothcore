# frozen_string_literal: true

# == Schema Information
#
# Table name: character_queststatus_rewarded
#
#  active                         :integer          default(1), unsigned, not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier)        :integer          default(0), unsigned, not null, primary key
#
module Characters
  class CharacterQueststatusRewarded < CharactersApplicationRecord
    self.table_name = 'character_queststatus_rewarded'
    self.primary_key = %i[guid quest]
  end
end
