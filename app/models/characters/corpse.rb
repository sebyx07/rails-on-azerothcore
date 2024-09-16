# frozen_string_literal: true

# == Schema Information
#
# Table name: corpse
#
#  bytes1                                   :integer          default(0), unsigned, not null
#  bytes2                                   :integer          default(0), unsigned, not null
#  corpseType                               :integer          default(0), unsigned, not null
#  displayId                                :integer          default(0), unsigned, not null
#  dynFlags                                 :integer          default(0), unsigned, not null
#  flags                                    :integer          default(0), unsigned, not null
#  guid(Character Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  guildId                                  :integer          default(0), unsigned, not null
#  instanceId(Instance Identifier)          :integer          default(0), unsigned, not null
#  itemCache                                :text(65535)      not null
#  mapId(Map Identifier)                    :integer          default(0), unsigned, not null
#  orientation                              :float(24)        default(0.0), not null
#  phaseMask                                :integer          default(1), unsigned, not null
#  posX                                     :float(24)        default(0.0), not null
#  posY                                     :float(24)        default(0.0), not null
#  posZ                                     :float(24)        default(0.0), not null
#  time                                     :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_instance  (instanceId)
#  idx_time      (time)
#  idx_type      (corpseType)
#
module Characters
  class Corpse < CharactersApplicationRecord
    self.table_name = 'corpse'
    self.primary_key = 'guid'
  end
end
