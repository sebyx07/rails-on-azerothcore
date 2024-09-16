# frozen_string_literal: true

# == Schema Information
#
# Table name: durabilityquality_dbc
#
#  Data :float(24)        default(0.0), not null
#  ID   :integer          default(0), not null, primary key
#
module World
  class DurabilityqualityDbc < WorldApplicationRecord
    self.table_name = 'durabilityquality_dbc'
    self.primary_key = 'ID'
  end
end
