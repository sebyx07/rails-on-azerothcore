# frozen_string_literal: true

# == Schema Information
#
# Table name: lfg_dungeon_rewards
#
#  dungeonId(Dungeon entry from dbc)                              :integer          default(0), unsigned, not null, primary key
#  firstQuestId(Quest id with rewards for first dungeon this day) :integer          default(0), unsigned, not null
#  maxLevel(Max level at which this reward is rewarded)           :integer          default(0), unsigned, not null, primary key
#  otherQuestId(Quest id with rewards for Nth dungeon this day)   :integer          default(0), unsigned, not null
#
module World
  class LfgDungeonReward < WorldApplicationRecord
    self.table_name = 'lfg_dungeon_rewards'
    self.primary_key = [:dungeonId, :maxLevel]
  end
end
