# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject
#
#  id(Gameobject Identifier)      :integer          default(0), unsigned, not null
#  Comment                        :text(65535)
#  ScriptName                     :string(64)       default("")
#  VerifiedBuild                  :integer
#  animprogress                   :integer          default(0), unsigned, not null
#  areaId(Area Identifier)        :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier) :integer          unsigned, not null, primary key
#  map(Map Identifier)            :integer          default(0), unsigned, not null
#  orientation                    :float(24)        default(0.0), not null
#  phaseMask                      :integer          default(1), unsigned, not null
#  position_x                     :float(24)        default(0.0), not null
#  position_y                     :float(24)        default(0.0), not null
#  position_z                     :float(24)        default(0.0), not null
#  rotation0                      :float(24)        default(0.0), not null
#  rotation1                      :float(24)        default(0.0), not null
#  rotation2                      :float(24)        default(0.0), not null
#  rotation3                      :float(24)        default(0.0), not null
#  spawnMask                      :integer          default(1), unsigned, not null
#  spawntimesecs                  :integer          default(0), not null
#  state                          :integer          default(0), unsigned, not null
#  zoneId(Zone Identifier)        :integer          default(0), unsigned, not null
#
module World
  class Gameobject < WorldApplicationRecord
    self.table_name = 'gameobject'
    self.primary_key = 'guid'
  end
end
