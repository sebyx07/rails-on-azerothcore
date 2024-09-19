# frozen_string_literal: true

# == Schema Information
#
# Table name: item_instance
#
#  charges          :text(255)
#  count            :integer          default(1), unsigned, not null
#  creatorGuid      :integer          default(0), unsigned, not null
#  durability       :integer          default(0), unsigned, not null
#  duration         :integer          default(0), not null
#  enchantments     :text(65535)      not null
#  flags            :integer          default(0), unsigned
#  giftCreatorGuid  :integer          default(0), unsigned, not null
#  guid             :integer          default(0), unsigned, not null, primary key
#  itemEntry        :integer          default(0), unsigned
#  owner_guid       :integer          default(0), unsigned, not null
#  playedTime       :integer          default(0), unsigned, not null
#  randomPropertyId :integer          default(0), not null
#  text             :text(65535)
#
# Indexes
#
#  idx_owner_guid  (owner_guid)
#
module Characters
  class ItemInstance < CharactersApplicationRecord
    self.table_name = 'item_instance'

    belongs_to :item, class_name: 'World::ItemTemplate', foreign_key: :itemEntry
  end
end
