# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_target_position
#
#  EffectIndex     :integer          default(0), unsigned, not null, primary key
#  ID(Identifier)  :integer          default(0), unsigned, not null, primary key
#  MapID           :integer          default(0), unsigned, not null
#  Orientation     :float(24)        default(0.0), not null
#  PositionX       :float(24)        default(0.0), not null
#  PositionY       :float(24)        default(0.0), not null
#  PositionZ       :float(24)        default(0.0), not null
#  VerifiedBuild   :integer
#
module World
  class SpellTargetPosition < WorldApplicationRecord
    self.table_name = 'spell_target_position'
    self.primary_key = %w[EffectIndex ID]
  end
end
