# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_money_reward
#
#  Level  :integer          default(0), not null, primary key
#  Money0 :integer          default(0), not null
#  Money1 :integer          default(0), not null
#  Money2 :integer          default(0), not null
#  Money3 :integer          default(0), not null
#  Money4 :integer          default(0), not null
#  Money5 :integer          default(0), not null
#  Money6 :integer          default(0), not null
#  Money7 :integer          default(0), not null
#  Money8 :integer          default(0), not null
#  Money9 :integer          default(0), not null
#
module World
  class QuestMoneyReward < WorldApplicationRecord
    self.table_name = 'quest_money_reward'
    self.primary_key = 'Level'
  end
end
