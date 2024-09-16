# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject_respawn
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
  class GameobjectRespawn < CharactersApplicationRecord
    self.table_name = 'gameobject_respawn'
    self.primary_key = %i[guid instanceId]
  end
end
