# frozen_string_literal: true

# == Schema Information
#
# Table name: player_factionchange_quests
#
#  alliance_id :integer          unsigned, not null, primary key
#  horde_id    :integer          unsigned, not null, primary key
#
# Indexes
#
#  alliance_uniq  (alliance_id) UNIQUE
#  horde_uniq     (horde_id) UNIQUE
#
module World
  class PlayerFactionchangeQuest < WorldApplicationRecord
    self.table_name = 'player_factionchange_quests'
    self.primary_key = [:alliance_id, :horde_id]
    belongs_to :alliance, optional: true
    belongs_to :horde, optional: true
  end
end
