# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_battleground_holiday
#
#  bgflag                              :integer          default(0), unsigned, not null
#  eventEntry(Entry of the game event) :integer          unsigned, not null, primary key
#
module World
  class GameEventBattlegroundHoliday < WorldApplicationRecord
    self.table_name = 'game_event_battleground_holiday'
    self.primary_key = 'eventEntry'
  end
end
