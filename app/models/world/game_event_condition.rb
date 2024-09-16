# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_condition
#
#  description                         :string(25)       default(""), not null
#  done_world_state_field              :integer          default(0), unsigned, not null
#  eventEntry(Entry of the game event) :integer          unsigned, not null, primary key
#  max_world_state_field               :integer          default(0), unsigned, not null
#  req_num                             :float(24)        default(0.0)
#  condition_id                        :integer          default(0), unsigned, not null, primary key
#
module World
  class GameEventCondition < WorldApplicationRecord
    self.table_name = 'game_event_condition'
    self.primary_key = %w[eventEntry condition_id]
    belongs_to :condition, optional: true
  end
end
