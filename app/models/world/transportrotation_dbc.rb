# frozen_string_literal: true

# == Schema Information
#
# Table name: transportrotation_dbc
#
#  GameObjectsID :integer          default(0), not null
#  ID            :integer          default(0), not null, primary key
#  RotW          :float(24)        default(0.0), not null
#  RotX          :float(24)        default(0.0), not null
#  RotY          :float(24)        default(0.0), not null
#  RotZ          :float(24)        default(0.0), not null
#  TimeIndex     :integer          default(0), not null
#
module World
  class TransportrotationDbc < WorldApplicationRecord
    self.table_name = 'transportrotation_dbc'
    self.primary_key = 'ID'
  end
end
