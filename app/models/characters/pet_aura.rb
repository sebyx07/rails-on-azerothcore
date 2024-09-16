# frozen_string_literal: true

# == Schema Information
#
# Table name: pet_aura
#
#  amount0                                   :integer
#  amount1                                   :integer
#  amount2                                   :integer
#  base_amount0                              :integer
#  base_amount1                              :integer
#  base_amount2                              :integer
#  casterGuid(Full Global Unique Identifier) :bigint           default(0), unsigned, not null, primary key
#  effectMask                                :integer          default(0), unsigned, not null, primary key
#  guid(Global Unique Identifier)            :integer          default(0), unsigned, not null, primary key
#  maxDuration                               :integer          default(0), not null
#  recalculateMask                           :integer          default(0), unsigned, not null
#  remainCharges                             :integer          default(0), unsigned, not null
#  remainTime                                :integer          default(0), not null
#  spell                                     :integer          default(0), unsigned, not null, primary key
#  stackCount                                :integer          default(1), unsigned, not null
#
module Characters
  class PetAura < CharactersApplicationRecord
    self.table_name = 'pet_aura'
    self.primary_key = %w[casterGuid effectMask guid spell]
  end
end
