# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_seasonal_questrelation
#
#  eventEntry(Entry of the game event) :integer          default(0), unsigned, not null, primary key
#  questId(Quest Identifier)           :integer          unsigned, not null, primary key
#
# Indexes
#
#  idx_quest  (questId)
#
module World
  class GameEventSeasonalQuestrelation < WorldApplicationRecord
    self.table_name = 'game_event_seasonal_questrelation'
    self.primary_key = %w[eventEntry questId]
  end
end
