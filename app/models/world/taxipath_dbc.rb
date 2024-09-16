# frozen_string_literal: true

# == Schema Information
#
# Table name: taxipath_dbc
#
#  Cost         :integer          default(0), not null
#  FromTaxiNode :integer          default(0), not null
#  ID           :integer          default(0), not null, primary key
#  ToTaxiNode   :integer          default(0), not null
#
module World
  class TaxipathDbc < WorldApplicationRecord
    self.table_name = 'taxipath_dbc'
    self.primary_key = 'ID'
  end
end
