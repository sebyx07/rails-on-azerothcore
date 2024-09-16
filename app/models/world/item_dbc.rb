# frozen_string_literal: true

# == Schema Information
#
# Table name: item_dbc
#
#  ClassID                   :integer          default(0), not null
#  DisplayInfoID             :integer          default(0), not null
#  ID                        :integer          default(0), not null, primary key
#  InventoryType             :integer          default(0), not null
#  Material                  :integer          default(0), not null
#  SheatheType               :integer          default(0), not null
#  Sound_Override_Subclassid :integer          default(0), not null
#  SubclassID                :integer          default(0), not null
#
module World
  class ItemDbc < WorldApplicationRecord
    self.table_name = 'item_dbc'
    self.primary_key = :ID
  end
end
