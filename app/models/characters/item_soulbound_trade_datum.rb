# frozen_string_literal: true

# == Schema Information
#
# Table name: item_soulbound_trade_data
#
#  allowedPlayers(Space separated GUID list of players who can receive this item in trade) :text(65535)      not null
#  itemGuid(Item GUID)                                                                     :integer          unsigned, not null, primary key
#
module Characters
  class ItemSoulboundTradeDatum < CharactersApplicationRecord
    self.table_name = 'item_soulbound_trade_data'
    self.primary_key = :itemGuid
  end
end
