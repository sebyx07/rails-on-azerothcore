# frozen_string_literal: true

# == Schema Information
#
# Table name: gtregenhpperspt_dbc
#
#  Data :float(24)        default(0.0), not null
#  ID   :integer          default(0), not null, primary key
#
module World
  class GtregenhppersptDbc < WorldApplicationRecord
    self.table_name = 'gtregenhpperspt_dbc'
    self.primary_key = :ID
  end
end
