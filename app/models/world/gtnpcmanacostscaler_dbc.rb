# frozen_string_literal: true

# == Schema Information
#
# Table name: gtnpcmanacostscaler_dbc
#
#  Data :float(24)        default(0.0), not null
#  ID   :integer          default(0), not null, primary key
#
module World
  class GtnpcmanacostscalerDbc < WorldApplicationRecord
    self.table_name = 'gtnpcmanacostscaler_dbc'
    self.primary_key = :ID
  end
end
