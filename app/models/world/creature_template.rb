# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_template
#
#  AIName                                           :string(64)       default(""), not null
#  ArmorModifier                                    :float(24)        default(1.0), not null
#  BaseAttackTime                                   :integer          default(0), unsigned, not null
#  BaseVariance                                     :float(24)        default(1.0), not null
#  DamageModifier                                   :float(24)        default(1.0), not null
#  ExperienceModifier                               :float(24)        default(1.0), not null
#  HealthModifier                                   :float(24)        default(1.0), not null
#  HoverHeight                                      :float(24)        default(1.0), not null
#  IconName                                         :string(100)
#  KillCredit1                                      :integer          default(0), unsigned, not null
#  KillCredit2                                      :integer          default(0), unsigned, not null
#  ManaModifier                                     :float(24)        default(1.0), not null
#  MovementType                                     :integer          default(0), unsigned, not null
#  PetSpellDataId                                   :integer          default(0), unsigned, not null
#  RacialLeader                                     :integer          default(0), unsigned, not null
#  RangeAttackTime                                  :integer          default(0), unsigned, not null
#  RangeVariance                                    :float(24)        default(1.0), not null
#  RegenHealth                                      :integer          default(1), unsigned, not null
#  ScriptName                                       :string(64)       default(""), not null
#  VehicleId                                        :integer          default(0), unsigned, not null
#  VerifiedBuild                                    :integer
#  detection_range                                  :float(24)        default(20.0), not null
#  difficulty_entry_1                               :integer          default(0), unsigned, not null
#  difficulty_entry_2                               :integer          default(0), unsigned, not null
#  difficulty_entry_3                               :integer          default(0), unsigned, not null
#  dmgschool                                        :integer          default(0), not null
#  dynamicflags                                     :integer          default(0), unsigned, not null
#  entry                                            :integer          default(0), unsigned, not null, primary key
#  exp                                              :integer          default(0), not null
#  faction                                          :integer          default(0), unsigned, not null
#  family                                           :integer          default(0), not null
#  flags_extra                                      :integer          default(0), unsigned, not null
#  lootid                                           :integer          default(0), unsigned, not null
#  maxgold                                          :integer          default(0), unsigned, not null
#  maxlevel                                         :integer          default(1), unsigned, not null
#  mechanic_immune_mask                             :integer          default(0), unsigned, not null
#  mingold                                          :integer          default(0), unsigned, not null
#  minlevel                                         :integer          default(1), unsigned, not null
#  movementId                                       :integer          default(0), unsigned, not null
#  name                                             :string(100)      default("0"), not null
#  npcflag                                          :integer          default(0), unsigned, not null
#  pickpocketloot                                   :integer          default(0), unsigned, not null
#  rank                                             :integer          default(0), unsigned, not null
#  scale                                            :float(24)        default(1.0), not null
#  skinloot                                         :integer          default(0), unsigned, not null
#  speed_flight                                     :float(24)        default(1.0), not null
#  speed_run(Result of 8.0/7.0, most common value)  :float(24)        default(1.14286), not null
#  speed_swim                                       :float(24)        default(1.0), not null
#  speed_walk(Result of 2.5/2.5, most common value) :float(24)        default(1.0), not null
#  spell_school_immune_mask                         :integer          default(0), unsigned, not null
#  subname                                          :string(100)
#  trainer_class                                    :integer          default(0), unsigned, not null
#  trainer_race                                     :integer          default(0), unsigned, not null
#  trainer_spell                                    :integer          default(0), unsigned, not null
#  trainer_type                                     :integer          default(0), not null
#  type                                             :integer          default(0), unsigned, not null
#  type_flags                                       :integer          default(0), unsigned, not null
#  unit_class                                       :integer          default(0), unsigned, not null
#  unit_flags                                       :integer          default(0), unsigned, not null
#  unit_flags2                                      :integer          default(0), unsigned, not null
#  gossip_menu_id                                   :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_name  (name)
#
module World
  class CreatureTemplate < WorldApplicationRecord
    self.table_name = 'creature_template'
    self.primary_key = 'entry'
    belongs_to :gossip_menu, optional: true
  end
end
