# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event
#
#  announce(0 dont announce, 1 announce, 2 value from config)         :integer          default(2), unsigned, not null
#  description(Description of the event displayed in console)         :string(255)
#  end_time(Absolute end date, the event will never start after)      :datetime         default(Sat, 01 Jan 2000 17:00:00.000000000 UTC +00:00)
#  eventEntry(Entry of the game event)                                :integer          unsigned, not null, primary key
#  holiday(Client side holiday id)                                    :integer          default(0), unsigned, not null
#  holidayStage                                                       :integer          default(0), unsigned, not null
#  length(Length in minutes of the event)                             :bigint           default(2592000), unsigned, not null
#  occurence(Delay in minutes between occurences of the event)        :bigint           default(5184000), unsigned, not null
#  start_time(Absolute start date, the event will never start before) :datetime         default(Sat, 01 Jan 2000 17:00:00.000000000 UTC +00:00)
#  world_event(0 if normal event, 1 if world event)                   :integer          default(0), unsigned, not null
#
module World
  class GameEvent < WorldApplicationRecord
    self.table_name = 'game_event'
    self.primary_key = :eventEntry
  end
end
