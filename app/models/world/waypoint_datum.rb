# frozen_string_literal: true

# == Schema Information
#
# Table name: waypoint_data
#
#  id(Creature GUID) :integer          default(0), unsigned, not null, primary key
#  action            :integer          default(0), not null
#  action_chance     :integer          default(100), not null
#  delay             :integer          default(0), unsigned, not null
#  move_type         :integer          default(0), not null
#  orientation       :float(24)
#  point             :integer          default(0), unsigned, not null, primary key
#  position_x        :float(24)        default(0.0), not null
#  position_y        :float(24)        default(0.0), not null
#  position_z        :float(24)        default(0.0), not null
#  wpguid            :integer          default(0), unsigned, not null
#
module World
  class WaypointDatum < WorldApplicationRecord
    self.table_name = 'waypoint_data'
    self.primary_key = [:id, :point]
  end
end
