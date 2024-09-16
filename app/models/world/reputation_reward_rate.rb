# frozen_string_literal: true

# == Schema Information
#
# Table name: reputation_reward_rate
#
#  creature_rate         :float(24)        default(1.0), not null
#  faction               :integer          default(0), unsigned, not null, primary key
#  quest_daily_rate      :float(24)        default(1.0), not null
#  quest_monthly_rate    :float(24)        default(1.0), not null
#  quest_rate            :float(24)        default(1.0), not null
#  quest_repeatable_rate :float(24)        default(1.0), not null
#  quest_weekly_rate     :float(24)        default(1.0), not null
#  spell_rate            :float(24)        default(1.0), not null
#
module World
  class ReputationRewardRate < WorldApplicationRecord
    self.table_name = 'reputation_reward_rate'
    self.primary_key = 'faction'
  end
end
