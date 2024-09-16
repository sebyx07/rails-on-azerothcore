# frozen_string_literal: true

# == Schema Information
#
# Table name: itemextendedcost_dbc
#
#  ArenaBracket        :integer          default(0), not null
#  ArenaPoints         :integer          default(0), not null
#  HonorPoints         :integer          default(0), not null
#  ID                  :integer          default(0), not null, primary key
#  ItemCount_1         :integer          default(0), not null
#  ItemCount_2         :integer          default(0), not null
#  ItemCount_3         :integer          default(0), not null
#  ItemCount_4         :integer          default(0), not null
#  ItemCount_5         :integer          default(0), not null
#  ItemID_1            :integer          default(0), not null
#  ItemID_2            :integer          default(0), not null
#  ItemID_3            :integer          default(0), not null
#  ItemID_4            :integer          default(0), not null
#  ItemID_5            :integer          default(0), not null
#  ItemPurchaseGroup   :integer          default(0), not null
#  RequiredArenaRating :integer          default(0), not null
#
module World
  class ItemextendedcostDbc < WorldApplicationRecord
    self.table_name = 'itemextendedcost_dbc'
    self.primary_key = :ID
  end
end
