# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_greeting_locale
#
#  Greeting      :text(65535)
#  ID            :integer          default(0), unsigned, not null, primary key
#  VerifiedBuild :integer
#  locale        :string(4)        not null, primary key
#  type          :integer          default(0), unsigned, not null, primary key
#
module World
  class QuestGreetingLocale < WorldApplicationRecord
    self.table_name = 'quest_greeting_locale'
    self.primary_key = [:ID, :type, :locale]
  end
end
