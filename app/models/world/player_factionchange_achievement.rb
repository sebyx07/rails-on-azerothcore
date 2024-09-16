# frozen_string_literal: true

# == Schema Information
#
# Table name: player_factionchange_achievement
#
#  alliance_id :integer          unsigned, not null, primary key
#  horde_id    :integer          unsigned, not null, primary key
#
module World
  class PlayerFactionchangeAchievement < WorldApplicationRecord
    self.table_name = 'player_factionchange_achievement'
    self.primary_key = [:alliance_id, :horde_id]
    belongs_to :alliance, optional: true
    belongs_to :horde, optional: true
  end
end
