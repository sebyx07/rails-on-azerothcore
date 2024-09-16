# frozen_string_literal: true

# == Schema Information
#
# Table name: item_loot_storage
#
#  conditionLootId   :integer          default(0), not null
#  containerGUID     :integer          unsigned, not null
#  count             :integer          unsigned, not null
#  follow_loot_rules :integer          unsigned, not null
#  freeforall        :integer          unsigned, not null
#  is_blocked        :integer          unsigned, not null
#  is_counted        :integer          unsigned, not null
#  is_underthreshold :integer          unsigned, not null
#  item_index        :integer          default(0), unsigned, not null, primary key
#  itemid            :integer          unsigned, not null
#  needs_quest       :integer          unsigned, not null
#  randomPropertyId  :integer          not null
#  randomSuffix      :integer          unsigned, not null
#
module Characters
  class ItemLootStorage < CharactersApplicationRecord
    self.table_name = 'item_loot_storage'
    self.primary_key = %i[item_index]
  end
end
