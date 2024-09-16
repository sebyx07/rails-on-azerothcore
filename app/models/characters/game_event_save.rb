# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_save
#
#  eventEntry :integer          unsigned, not null, primary key
#  next_start :integer          default(0), unsigned, not null
#  state      :integer          default(1), unsigned, not null
#
module Characters
  class GameEventSave < CharactersApplicationRecord
    self.table_name = 'game_event_save'
    self.primary_key = :eventEntry
  end
end
