# frozen_string_literal: true

# == Schema Information
#
# Table name: player_race_stats
#
#  Agility   :integer          default(0), not null
#  Intellect :integer          default(0), not null
#  Race      :integer          unsigned, not null, primary key
#  Spirit    :integer          default(0), not null
#  Stamina   :integer          default(0), not null
#  Strength  :integer          default(0), not null
#
module World
  class PlayerRaceStat < WorldApplicationRecord
    self.table_name = 'player_race_stats'
    self.primary_key = 'Race'
  end
end
