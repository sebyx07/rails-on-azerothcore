# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_respawn
#
#  guid(Global Unique Identifier)  :integer          default(0), unsigned, not null, primary key
#  instanceId(Instance Identifier) :integer          default(0), unsigned, not null, primary key
#  mapId                           :integer          default(0), unsigned, not null
#  respawnTime                     :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_instance  (instanceId)
#
module Characters
  class CreatureRespawn < CharactersApplicationRecord
    self.table_name = 'creature_respawn'
    self.primary_key = %i[guid instanceId]
  end
end
