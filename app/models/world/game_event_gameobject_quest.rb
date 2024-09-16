# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_gameobject_quest
#
#  id                                  :integer          default(0), unsigned, not null, primary key
#  eventEntry(Entry of the game event) :integer          unsigned, not null, primary key
#  quest                               :integer          default(0), unsigned, not null, primary key
#
module World
  class GameEventGameobjectQuest < WorldApplicationRecord
    self.table_name = 'game_event_gameobject_quest'
    self.primary_key = %w[id quest]
  end
end
