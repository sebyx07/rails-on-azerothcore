# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_prerequisite
#
#  eventEntry(Entry of the game event) :integer          unsigned, not null, primary key
#  prerequisite_event                  :integer          unsigned, not null, primary key
#
module World
  class GameEventPrerequisite < WorldApplicationRecord
    self.table_name = 'game_event_prerequisite'
    self.primary_key = %w[eventEntry prerequisite_event]
  end
end
