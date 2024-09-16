# frozen_string_literal: true

# == Schema Information
#
# Table name: areatrigger_teleport
#
#  ID                 :integer          default(0), unsigned, not null, primary key
#  Name               :text(65535)
#  target_map         :integer          default(0), unsigned, not null
#  target_orientation :float(24)        default(0.0), not null
#  target_position_x  :float(24)        default(0.0), not null
#  target_position_y  :float(24)        default(0.0), not null
#  target_position_z  :float(24)        default(0.0), not null
#
# Indexes
#
#  name  (Name)
#
module World
  class AreatriggerTeleport < WorldApplicationRecord
    self.table_name = 'areatrigger_teleport'
    self.primary_key = 'ID'
  end
end
