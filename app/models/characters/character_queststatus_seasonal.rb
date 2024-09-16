# frozen_string_literal: true

# == Schema Information
#
# Table name: character_queststatus_seasonal
#
#  event(Event Identifier)        :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier)        :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  idx_guid  (guid)
#
module Characters
  class CharacterQueststatusSeasonal < CharactersApplicationRecord
    self.table_name = 'character_queststatus_seasonal'
    self.primary_key = %i[guid quest]
  end
end
