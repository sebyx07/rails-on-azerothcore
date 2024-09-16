# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_creature
#
#  eventEntry(Entry of the game event. Put negative entry to remove during event.) :integer          not null, primary key
#  guid                                                                            :integer          unsigned, not null, primary key
#
module World
  class GameEventCreature < WorldApplicationRecord
    self.table_name = 'game_event_creature'
    self.primary_key = %w[eventEntry guid]
  end
end
