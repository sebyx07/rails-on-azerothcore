# frozen_string_literal: true

# == Schema Information
#
# Table name: cinematiccamera_dbc
#
#  ID         :integer          default(0), not null, primary key
#  locationX  :float(24)        default(0.0), not null
#  locationY  :float(24)        default(0.0), not null
#  locationZ  :float(24)        default(0.0), not null
#  model      :string(100)
#  rotation   :float(24)        default(0.0), not null
#  soundEntry :integer          default(0), not null
#
module World
  class CinematiccameraDbc < WorldApplicationRecord
    self.table_name = 'cinematiccamera_dbc'
    self.primary_key = 'ID'
  end
end
