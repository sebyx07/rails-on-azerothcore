# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_movement_override
#
#  Chase                                                                                                           :integer          unsigned
#  Flight                                                                                                          :integer          unsigned
#  Ground                                                                                                          :integer          unsigned
#  InteractionPauseTimer(Time (in milliseconds) during which creature will not move after interaction with player) :integer          unsigned
#  Random                                                                                                          :integer          unsigned
#  Rooted                                                                                                          :integer          unsigned
#  SpawnId                                                                                                         :integer          default(0), unsigned, not null, primary key
#  Swim                                                                                                            :integer          unsigned
#
module World
  class CreatureMovementOverride < WorldApplicationRecord
    self.table_name = 'creature_movement_override'
    self.primary_key = 'SpawnId'
  end
end
