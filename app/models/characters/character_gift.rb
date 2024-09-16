# frozen_string_literal: true

# == Schema Information
#
# Table name: character_gifts
#
#  entry     :integer          default(0), unsigned, not null
#  flags     :integer          default(0), unsigned, not null
#  guid      :integer          default(0), unsigned, not null
#  item_guid :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  idx_guid  (guid)
#
module Characters
  class CharacterGift < CharactersApplicationRecord
    self.table_name = 'character_gifts'
    self.primary_key = :item_guid
  end
end
