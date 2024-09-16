# frozen_string_literal: true

# == Schema Information
#
# Table name: achievement_reward_locale
#
#  ID      :integer          default(0), unsigned, not null, primary key
#  Locale  :string(4)        not null, primary key
#  Subject :text(65535)
#  Text    :text(65535)
#
module World
  class AchievementRewardLocale < WorldApplicationRecord
    self.table_name = 'achievement_reward_locale'
    self.primary_key = %w[ID Locale]
  end
end
