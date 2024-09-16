# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_mail_sender
#
#  QuestId               :integer          default(0), unsigned, not null, primary key
#  RewardMailSenderEntry :integer          default(0), unsigned, not null
#
module World
  class QuestMailSender < WorldApplicationRecord
    self.table_name = 'quest_mail_sender'
    self.primary_key = 'QuestId'
  end
end
