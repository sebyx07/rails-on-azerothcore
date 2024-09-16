# frozen_string_literal: true

# == Schema Information
#
# Table name: stableslotprices_dbc
#
#  Cost :integer          default(0), not null
#  ID   :integer          default(0), not null, primary key
#
module World
  class StableslotpricesDbc < WorldApplicationRecord
    self.table_name = 'stableslotprices_dbc'
    self.primary_key = 'ID'
  end
end
