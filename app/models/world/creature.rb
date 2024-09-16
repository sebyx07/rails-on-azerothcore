# frozen_string_literal: true

# == Schema Information
#
# Table name: creature
#
#  Comment                        :text(65535)
#  CreateObject                   :integer          default(0), unsigned, not null
#  MovementType                   :integer          default(0), unsigned, not null
#  ScriptName                     :string(64)       default("")
#  VerifiedBuild                  :integer
#  areaId(Area Identifier)        :integer          default(0), unsigned, not null
#  curhealth                      :integer          default(1), unsigned, not null
#  curmana                        :integer          default(0), unsigned, not null
#  currentwaypoint                :integer          default(0), unsigned, not null
#  dynamicflags                   :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier) :integer          unsigned, not null, primary key
#  id1(Creature Identifier)       :integer          default(0), unsigned, not null
#  id2(Creature Identifier)       :integer          default(0), unsigned, not null
#  id3(Creature Identifier)       :integer          default(0), unsigned, not null
#  map(Map Identifier)            :integer          default(0), unsigned, not null
#  npcflag                        :integer          default(0), unsigned, not null
#  orientation                    :float(24)        default(0.0), not null
#  phaseMask                      :integer          default(1), unsigned, not null
#  position_x                     :float(24)        default(0.0), not null
#  position_y                     :float(24)        default(0.0), not null
#  position_z                     :float(24)        default(0.0), not null
#  spawnMask                      :integer          default(1), unsigned, not null
#  spawntimesecs                  :integer          default(120), unsigned, not null
#  unit_flags                     :integer          default(0), unsigned, not null
#  wander_distance                :float(24)        default(0.0), not null
#  zoneId(Zone Identifier)        :integer          default(0), unsigned, not null
#  equipment_id                   :integer          default(0), not null
#
# Indexes
#
#  idx_id   (id1)
#  idx_map  (map)
#
module World
  class Creature < WorldApplicationRecord
    self.table_name = 'creature'
    self.primary_key = 'guid'
    belongs_to :equipment, optional: true
  end
end
