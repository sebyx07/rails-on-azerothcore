# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_condition_save
#
#  done         :float(24)        default(0.0)
#  eventEntry   :integer          unsigned, not null, primary key
#  condition_id :integer          default(0), unsigned, not null, primary key
#
module Characters
  class GameEventConditionSave < CharactersApplicationRecord
    self.table_name = 'game_event_condition_save'
    self.primary_key = %i[eventEntry condition_id]
  end
end
