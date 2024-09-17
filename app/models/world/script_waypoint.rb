# frozen_string_literal: true

# == Schema Information
#
# Table name: script_waypoint
#
#  entry(creature_template entry)  :integer          default(0), unsigned, not null, primary key
#  location_x                      :float(24)        default(0.0), not null
#  location_y                      :float(24)        default(0.0), not null
#  location_z                      :float(24)        default(0.0), not null
#  point_comment                   :text(65535)
#  pointid                         :integer          default(0), unsigned, not null, primary key
#  waittime(waittime in millisecs) :integer          default(0), unsigned, not null
#
module World
  class ScriptWaypoint < WorldApplicationRecord
    self.table_name = 'script_waypoint'
    self.primary_key = %i[entry pointid]
  end
end
