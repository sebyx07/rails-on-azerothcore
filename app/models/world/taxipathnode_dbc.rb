# frozen_string_literal: true

# == Schema Information
#
# Table name: taxipathnode_dbc
#
#  ArrivalEventID   :integer          default(0), not null
#  ContinentID      :integer          default(0), not null
#  Delay            :integer          default(0), not null
#  DepartureEventID :integer          default(0), not null
#  Flags            :integer          default(0), not null
#  ID               :integer          default(0), not null, primary key
#  LocX             :float(24)        default(0.0), not null
#  LocY             :float(24)        default(0.0), not null
#  LocZ             :float(24)        default(0.0), not null
#  NodeIndex        :integer          default(0), not null
#  PathID           :integer          default(0), not null
#
module World
  class TaxipathnodeDbc < WorldApplicationRecord
    self.table_name = 'taxipathnode_dbc'
    self.primary_key = 'ID'
  end
end
