# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_arena_seasons
#
#  eventEntry(Entry of the game event) :integer          unsigned, not null
#  season(Arena season number)         :integer          unsigned, not null
#
# Indexes
#
#  season  (season,eventEntry) UNIQUE
#
module World
  class GameEventArenaSeason < WorldApplicationRecord
    self.table_name = 'game_event_arena_seasons'
  end
end
