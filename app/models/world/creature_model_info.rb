# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_model_info
#
#  BoundingRadius         :float(24)        default(0.0), not null
#  CombatReach            :float(24)        default(0.0), not null
#  DisplayID              :integer          default(0), unsigned, not null, primary key
#  DisplayID_Other_Gender :integer          default(0), unsigned, not null
#  Gender                 :integer          default(2), unsigned, not null
#
module World
  class CreatureModelInfo < WorldApplicationRecord
    self.table_name = 'creature_model_info'
    self.primary_key = 'DisplayID'
  end
end
