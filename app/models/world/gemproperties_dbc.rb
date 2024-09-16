# frozen_string_literal: true

# == Schema Information
#
# Table name: gemproperties_dbc
#
#  Enchant_Id    :integer          default(0), not null
#  ID            :integer          default(0), not null, primary key
#  Maxcount_Inv  :integer          default(0), not null
#  Maxcount_Item :integer          default(0), not null
#  Type          :integer          default(0), not null
#
module World
  class GempropertiesDbc < WorldApplicationRecord
    self.table_name = 'gemproperties_dbc'
    self.primary_key = 'ID'
  end
end
