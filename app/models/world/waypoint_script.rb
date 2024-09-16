# frozen_string_literal: true

# == Schema Information
#
# Table name: waypoint_scripts
#
#  id        :integer          default(0), unsigned, not null
#  command   :integer          default(0), unsigned, not null
#  dataint   :integer          default(0), unsigned, not null
#  datalong  :integer          default(0), unsigned, not null
#  datalong2 :integer          default(0), unsigned, not null
#  delay     :integer          default(0), unsigned, not null
#  guid      :integer          default(0), not null, primary key
#  o         :float(24)        default(0.0), not null
#  x         :float(24)        default(0.0), not null
#  y         :float(24)        default(0.0), not null
#  z         :float(24)        default(0.0), not null
#
module World
  class WaypointScript < WorldApplicationRecord
    self.table_name = 'waypoint_scripts'
    self.primary_key = 'guid'
  end
end
