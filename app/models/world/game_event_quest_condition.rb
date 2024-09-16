# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_quest_condition
#
#  eventEntry(Entry of the game event.) :integer          unsigned, not null
#  num                                  :float(24)        default(0.0)
#  quest                                :integer          default(0), unsigned, not null, primary key
#  condition_id                         :integer          default(0), unsigned, not null
#
module World
  class GameEventQuestCondition < WorldApplicationRecord
    self.table_name = 'game_event_quest_condition'
    self.primary_key = %w[quest]
    belongs_to :condition, optional: true
  end
end
