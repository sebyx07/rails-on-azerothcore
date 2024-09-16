# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_npcflag
#
#  eventEntry(Entry of the game event) :integer          unsigned, not null, primary key
#  guid                                :integer          default(0), unsigned, not null, primary key
#  npcflag                             :integer          default(0), unsigned, not null
#
module World
  class GameEventNpcflag < WorldApplicationRecord
    self.table_name = 'game_event_npcflag'
    self.primary_key = %w[guid eventEntry]
  end
end
