# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_offer_reward_locale
#
#  ID            :integer          default(0), unsigned, not null, primary key
#  RewardText    :text(65535)
#  VerifiedBuild :integer
#  locale        :string(4)        not null, primary key
#
module World
  class QuestOfferRewardLocale < WorldApplicationRecord
    self.table_name = 'quest_offer_reward_locale'
    self.primary_key = [:ID, :locale]
  end
end
