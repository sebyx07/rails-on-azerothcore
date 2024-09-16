# frozen_string_literal: true

# == Schema Information
#
# Table name: currencytypes_dbc
#
#  BitIndex   :integer          default(0), not null
#  CategoryID :integer          default(0), not null
#  ID         :integer          default(0), not null, primary key
#  ItemID     :integer          default(0), not null
#
module World
  class CurrencytypesDbc < WorldApplicationRecord
    self.table_name = 'currencytypes_dbc'
    self.primary_key = 'ID'
  end
end
