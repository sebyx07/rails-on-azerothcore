# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_pool
#
#  eventEntry(Entry of the game event. Put negative entry to remove during event.) :integer          not null
#  pool_entry(Id of the pool)                                                      :integer          default(0), unsigned, not null, primary key
#
module World
  class GameEventPool < WorldApplicationRecord
    self.table_name = 'game_event_pool'
    self.primary_key = 'pool_entry'
  end
end
