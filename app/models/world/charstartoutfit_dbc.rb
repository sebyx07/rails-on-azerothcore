# frozen_string_literal: true

# == Schema Information
#
# Table name: charstartoutfit_dbc
#
#  ClassID          :integer          default(0), unsigned, not null
#  DisplayItemID_1  :integer          default(0), not null
#  DisplayItemID_10 :integer          default(0), not null
#  DisplayItemID_11 :integer          default(0), not null
#  DisplayItemID_12 :integer          default(0), not null
#  DisplayItemID_13 :integer          default(0), not null
#  DisplayItemID_14 :integer          default(0), not null
#  DisplayItemID_15 :integer          default(0), not null
#  DisplayItemID_16 :integer          default(0), not null
#  DisplayItemID_17 :integer          default(0), not null
#  DisplayItemID_18 :integer          default(0), not null
#  DisplayItemID_19 :integer          default(0), not null
#  DisplayItemID_2  :integer          default(0), not null
#  DisplayItemID_20 :integer          default(0), not null
#  DisplayItemID_21 :integer          default(0), not null
#  DisplayItemID_22 :integer          default(0), not null
#  DisplayItemID_23 :integer          default(0), not null
#  DisplayItemID_24 :integer          default(0), not null
#  DisplayItemID_3  :integer          default(0), not null
#  DisplayItemID_4  :integer          default(0), not null
#  DisplayItemID_5  :integer          default(0), not null
#  DisplayItemID_6  :integer          default(0), not null
#  DisplayItemID_7  :integer          default(0), not null
#  DisplayItemID_8  :integer          default(0), not null
#  DisplayItemID_9  :integer          default(0), not null
#  ID               :integer          default(0), not null, primary key
#  InventoryType_1  :integer          default(0), not null
#  InventoryType_10 :integer          default(0), not null
#  InventoryType_11 :integer          default(0), not null
#  InventoryType_12 :integer          default(0), not null
#  InventoryType_13 :integer          default(0), not null
#  InventoryType_14 :integer          default(0), not null
#  InventoryType_15 :integer          default(0), not null
#  InventoryType_16 :integer          default(0), not null
#  InventoryType_17 :integer          default(0), not null
#  InventoryType_18 :integer          default(0), not null
#  InventoryType_19 :integer          default(0), not null
#  InventoryType_2  :integer          default(0), not null
#  InventoryType_20 :integer          default(0), not null
#  InventoryType_21 :integer          default(0), not null
#  InventoryType_22 :integer          default(0), not null
#  InventoryType_23 :integer          default(0), not null
#  InventoryType_24 :integer          default(0), not null
#  InventoryType_3  :integer          default(0), not null
#  InventoryType_4  :integer          default(0), not null
#  InventoryType_5  :integer          default(0), not null
#  InventoryType_6  :integer          default(0), not null
#  InventoryType_7  :integer          default(0), not null
#  InventoryType_8  :integer          default(0), not null
#  InventoryType_9  :integer          default(0), not null
#  ItemID_1         :integer          default(0), not null
#  ItemID_10        :integer          default(0), not null
#  ItemID_11        :integer          default(0), not null
#  ItemID_12        :integer          default(0), not null
#  ItemID_13        :integer          default(0), not null
#  ItemID_14        :integer          default(0), not null
#  ItemID_15        :integer          default(0), not null
#  ItemID_16        :integer          default(0), not null
#  ItemID_17        :integer          default(0), not null
#  ItemID_18        :integer          default(0), not null
#  ItemID_19        :integer          default(0), not null
#  ItemID_2         :integer          default(0), not null
#  ItemID_20        :integer          default(0), not null
#  ItemID_21        :integer          default(0), not null
#  ItemID_22        :integer          default(0), not null
#  ItemID_23        :integer          default(0), not null
#  ItemID_24        :integer          default(0), not null
#  ItemID_3         :integer          default(0), not null
#  ItemID_4         :integer          default(0), not null
#  ItemID_5         :integer          default(0), not null
#  ItemID_6         :integer          default(0), not null
#  ItemID_7         :integer          default(0), not null
#  ItemID_8         :integer          default(0), not null
#  ItemID_9         :integer          default(0), not null
#  OutfitID         :integer          default(0), unsigned, not null
#  RaceID           :integer          default(0), unsigned, not null
#  SexID            :integer          default(0), unsigned, not null
#
module World
  class CharstartoutfitDbc < WorldApplicationRecord
    self.table_name = 'charstartoutfit_dbc'
    self.primary_key = 'ID'
  end
end
