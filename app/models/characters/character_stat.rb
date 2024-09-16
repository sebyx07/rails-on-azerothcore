# frozen_string_literal: true

# == Schema Information
#
# Table name: character_stats
#
#  agility                                  :integer          default(0), unsigned, not null
#  armor                                    :integer          default(0), unsigned, not null
#  attackPower                              :integer          default(0), unsigned, not null
#  blockPct                                 :float(24)        default(0.0), not null
#  critPct                                  :float(24)        default(0.0), not null
#  dodgePct                                 :float(24)        default(0.0), not null
#  guid(Global Unique Identifier, Low part) :integer          default(0), unsigned, not null, primary key
#  intellect                                :integer          default(0), unsigned, not null
#  maxhealth                                :integer          default(0), unsigned, not null
#  maxpower1                                :integer          default(0), unsigned, not null
#  maxpower2                                :integer          default(0), unsigned, not null
#  maxpower3                                :integer          default(0), unsigned, not null
#  maxpower4                                :integer          default(0), unsigned, not null
#  maxpower5                                :integer          default(0), unsigned, not null
#  maxpower6                                :integer          default(0), unsigned, not null
#  maxpower7                                :integer          default(0), unsigned, not null
#  parryPct                                 :float(24)        default(0.0), not null
#  rangedAttackPower                        :integer          default(0), unsigned, not null
#  rangedCritPct                            :float(24)        default(0.0), not null
#  resArcane                                :integer          default(0), unsigned, not null
#  resFire                                  :integer          default(0), unsigned, not null
#  resFrost                                 :integer          default(0), unsigned, not null
#  resHoly                                  :integer          default(0), unsigned, not null
#  resNature                                :integer          default(0), unsigned, not null
#  resShadow                                :integer          default(0), unsigned, not null
#  resilience                               :integer          default(0), unsigned, not null
#  spellCritPct                             :float(24)        default(0.0), not null
#  spellPower                               :integer          default(0), unsigned, not null
#  spirit                                   :integer          default(0), unsigned, not null
#  stamina                                  :integer          default(0), unsigned, not null
#  strength                                 :integer          default(0), unsigned, not null
#
module Characters
  class CharacterStat < CharactersApplicationRecord
    self.table_name = 'character_stats'
    self.primary_key = :guid
  end
end
