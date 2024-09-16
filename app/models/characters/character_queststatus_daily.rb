# frozen_string_literal: true

# == Schema Information
#
# Table name: character_queststatus_daily
#
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier)        :integer          default(0), unsigned, not null, primary key
#  time                           :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_guid  (guid)
#
module Characters
  class CharacterQueststatusDaily < CharactersApplicationRecord
    self.table_name = 'character_queststatus_daily'
    self.primary_key = %i[guid quest]
  end
end
