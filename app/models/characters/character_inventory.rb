# frozen_string_literal: true

# == Schema Information
#
# Table name: character_inventory
#
#  bag                                 :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier)      :integer          default(0), unsigned, not null
#  item(Item Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  slot                                :integer          default(0), unsigned, not null
#
# Indexes
#
#  guid      (guid,bag,slot) UNIQUE
#  idx_guid  (guid)
#
module Characters
  class CharacterInventory < CharactersApplicationRecord
    self.table_name = 'character_inventory'
    self.primary_key = :item
  end
end
