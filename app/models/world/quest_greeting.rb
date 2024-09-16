# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_greeting
#
#  GreetEmoteDelay :integer          default(0), unsigned, not null
#  GreetEmoteType  :integer          default(0), unsigned, not null
#  Greeting        :text(65535)
#  ID              :integer          default(0), unsigned, not null, primary key
#  VerifiedBuild   :integer
#  type            :integer          default(0), unsigned, not null, primary key
#
module World
  class QuestGreeting < WorldApplicationRecord
    self.table_name = 'quest_greeting'
    self.primary_key = [:ID, :type]
  end
end
