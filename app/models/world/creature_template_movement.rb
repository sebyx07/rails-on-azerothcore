# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_template_movement
#
#  Chase                                                                                                           :integer          unsigned
#  CreatureId                                                                                                      :integer          default(0), unsigned, not null, primary key
#  Flight                                                                                                          :integer          unsigned
#  Ground                                                                                                          :integer          unsigned
#  InteractionPauseTimer(Time (in milliseconds) during which creature will not move after interaction with player) :integer          unsigned
#  Random                                                                                                          :integer          unsigned
#  Rooted                                                                                                          :integer          unsigned
#  Swim                                                                                                            :integer          unsigned
#
module World
  class CreatureTemplateMovement < WorldApplicationRecord
    self.table_name = 'creature_template_movement'
    self.primary_key = :CreatureId
  end
end
