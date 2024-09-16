# frozen_string_literal: true

# == Schema Information
#
# Table name: mail_level_reward
#
#  level          :integer          default(0), unsigned, not null, primary key
#  mailTemplateId :integer          default(0), unsigned, not null
#  raceMask       :integer          default(0), unsigned, not null, primary key
#  senderEntry    :integer          default(0), unsigned, not null
#
module World
  class MailLevelReward < WorldApplicationRecord
    self.table_name = 'mail_level_reward'
    self.primary_key = %i(level raceMask)
  end
end
