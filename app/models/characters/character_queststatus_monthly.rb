# frozen_string_literal: true

# == Schema Information
#
# Table name: character_queststatus_monthly
#
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier)        :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  idx_guid  (guid)
#
module Characters
  class CharacterQueststatusMonthly < CharactersApplicationRecord
    self.table_name = 'character_queststatus_monthly'
    self.primary_key = %i[guid quest]
  end
end
