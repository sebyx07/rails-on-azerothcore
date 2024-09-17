# frozen_string_literal: true

# == Schema Information
#
# Table name: waypoints
#
#  delay         :integer          default(0), unsigned, not null
#  entry         :integer          default(0), unsigned, not null, primary key
#  orientation   :float(24)
#  point_comment :text(65535)
#  pointid       :integer          default(0), unsigned, not null, primary key
#  position_x    :float(24)        default(0.0), not null
#  position_y    :float(24)        default(0.0), not null
#  position_z    :float(24)        default(0.0), not null
#
module World
  class Waypoint < WorldApplicationRecord
    self.table_name = 'waypoints'
    self.primary_key = :entry, :pointid
  end
end
