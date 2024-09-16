# frozen_string_literal: true

# == Schema Information
#
# Table name: achievement_reward
#
#  Body           :text(65535)
#  ID             :integer          default(0), unsigned, not null, primary key
#  ItemID         :integer          default(0), unsigned, not null
#  MailTemplateID :integer          default(0), unsigned, not null
#  Sender         :integer          default(0), unsigned, not null
#  Subject        :string(255)
#  TitleA         :integer          default(0), unsigned, not null
#  TitleH         :integer          default(0), unsigned, not null
#
module World
  class AchievementReward < WorldApplicationRecord
    self.table_name = 'achievement_reward'
    self.primary_key = 'ID'
  end
end
