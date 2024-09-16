# frozen_string_literal: true

# == Schema Information
#
# Table name: auctionhouse
#
#  id          :integer          default(0), unsigned, not null, primary key
#  buyguid     :integer          default(0), unsigned, not null
#  buyoutprice :integer          default(0), unsigned, not null
#  deposit     :integer          default(0), unsigned, not null
#  houseid     :integer          default(7), unsigned, not null
#  itemguid    :integer          default(0), unsigned, not null
#  itemowner   :integer          default(0), unsigned, not null
#  lastbid     :integer          default(0), unsigned, not null
#  startbid    :integer          default(0), unsigned, not null
#  time        :integer          default(0), unsigned, not null
#
# Indexes
#
#  item_guid  (itemguid) UNIQUE
#
module Characters
  class Auctionhouse < CharactersApplicationRecord
    self.table_name = 'auctionhouse'
    self.primary_key = 'id'
  end
end
