# frozen_string_literal: true

# == Schema Information
#
# Table name: transportanimation_dbc
#
#  ID          :integer          default(0), not null, primary key
#  PosX        :float(24)        default(0.0), not null
#  PosY        :float(24)        default(0.0), not null
#  PosZ        :float(24)        default(0.0), not null
#  SequenceID  :integer          default(0), not null
#  TimeIndex   :integer          default(0), not null
#  TransportID :integer          default(0), not null
#
module World
  class TransportanimationDbc < WorldApplicationRecord
    self.table_name = 'transportanimation_dbc'
    self.primary_key = 'ID'
  end
end
