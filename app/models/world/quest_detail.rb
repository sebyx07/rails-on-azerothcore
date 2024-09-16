# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_details
#
#  Emote1        :integer          default(0), unsigned, not null
#  Emote2        :integer          default(0), unsigned, not null
#  Emote3        :integer          default(0), unsigned, not null
#  Emote4        :integer          default(0), unsigned, not null
#  EmoteDelay1   :integer          default(0), unsigned, not null
#  EmoteDelay2   :integer          default(0), unsigned, not null
#  EmoteDelay3   :integer          default(0), unsigned, not null
#  EmoteDelay4   :integer          default(0), unsigned, not null
#  ID            :integer          default(0), unsigned, not null, primary key
#  VerifiedBuild :integer
#
module World
  class QuestDetail < WorldApplicationRecord
    self.table_name = 'quest_details'
    self.primary_key = 'ID'
  end
end
