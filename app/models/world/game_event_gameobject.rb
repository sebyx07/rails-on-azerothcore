# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_gameobject
#
#  eventEntry(Entry of the game event. Put negative entry to remove during event.) :integer          not null, primary key
#  guid                                                                            :integer          unsigned, not null, primary key
#
module World
  class GameEventGameobject < WorldApplicationRecord
    self.table_name = 'game_event_gameobject'
    self.primary_key = %w[eventEntry guid]
  end
end
