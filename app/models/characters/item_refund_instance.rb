# frozen_string_literal: true

# == Schema Information
#
# Table name: item_refund_instance
#
#  item_guid(Item GUID)     :integer          unsigned, not null, primary key
#  paidExtendedCost         :integer          default(0), unsigned, not null
#  paidMoney                :integer          default(0), unsigned, not null
#  player_guid(Player GUID) :integer          unsigned, not null, primary key
#
module Characters
  class ItemRefundInstance < CharactersApplicationRecord
    self.table_name = 'item_refund_instance'
    self.primary_key = %i[item_guid player_guid]
  end
end
