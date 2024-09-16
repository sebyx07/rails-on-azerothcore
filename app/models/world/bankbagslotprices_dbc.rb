# frozen_string_literal: true

# == Schema Information
#
# Table name: bankbagslotprices_dbc
#
#  Cost :integer          default(0), not null
#  ID   :integer          default(0), not null, primary key
#
module World
  class BankbagslotpricesDbc < WorldApplicationRecord
    self.table_name = 'bankbagslotprices_dbc'
    self.primary_key = 'ID'
  end
end
