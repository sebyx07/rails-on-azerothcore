# frozen_string_literal: true

# == Schema Information
#
# Table name: character_aura
#
#  amount0                                   :integer          default(0), not null
#  amount1                                   :integer          default(0), not null
#  amount2                                   :integer          default(0), not null
#  base_amount0                              :integer          default(0), not null
#  base_amount1                              :integer          default(0), not null
#  base_amount2                              :integer          default(0), not null
#  casterGuid(Full Global Unique Identifier) :bigint           default(0), unsigned, not null, primary key
#  effectMask                                :integer          default(0), unsigned, not null, primary key
#  guid(Global Unique Identifier)            :integer          default(0), unsigned, not null, primary key
#  itemGuid                                  :bigint           default(0), unsigned, not null, primary key
#  maxDuration                               :integer          default(0), not null
#  recalculateMask                           :integer          default(0), unsigned, not null
#  remainCharges                             :integer          default(0), unsigned, not null
#  remainTime                                :integer          default(0), not null
#  spell                                     :integer          default(0), unsigned, not null, primary key
#  stackCount                                :integer          default(1), unsigned, not null
#
module Characters
  class CharacterAura < CharactersApplicationRecord
    self.table_name = 'character_aura'
    self.primary_key = %w[casterGuid effectMask guid itemGuid spell]
  end
end
