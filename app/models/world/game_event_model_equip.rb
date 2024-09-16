# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_model_equip
#
#  eventEntry(Entry of the game event.) :integer          not null
#  guid                                 :integer          default(0), unsigned, not null, primary key
#  modelid                              :integer          default(0), unsigned, not null
#  equipment_id                         :integer          default(0), unsigned, not null
#
module World
  class GameEventModelEquip < WorldApplicationRecord
    self.table_name = 'game_event_model_equip'
    self.primary_key = %w[guid]
    belongs_to :equipment, optional: true
  end
end
