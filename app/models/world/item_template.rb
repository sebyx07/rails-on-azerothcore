# frozen_string_literal: true

# == Schema Information
#
# Table name: item_template
#
#  AllowableClass            :integer          default(-1), not null
#  AllowableRace             :integer          default(-1), not null
#  ArmorDamageModifier       :float(24)        default(0.0), not null
#  BagFamily                 :integer          default(0), not null
#  BuyCount                  :integer          default(1), unsigned, not null
#  BuyPrice                  :bigint           default(0), not null
#  ContainerSlots            :integer          default(0), unsigned, not null
#  DisenchantID              :integer          default(0), unsigned, not null
#  Flags                     :integer          default(0), unsigned, not null
#  FlagsExtra                :integer          default(0), unsigned, not null
#  FoodType                  :integer          default(0), unsigned, not null
#  GemProperties             :integer          default(0), not null
#  HolidayId                 :integer          default(0), unsigned, not null
#  InventoryType             :integer          default(0), unsigned, not null
#  ItemLevel                 :integer          default(0), unsigned, not null
#  ItemLimitCategory         :integer          default(0), not null
#  LanguageID                :integer          default(0), unsigned, not null
#  Map                       :integer          default(0), not null
#  Material                  :integer          default(0), not null
#  MaxDurability             :integer          default(0), unsigned, not null
#  PageMaterial              :integer          default(0), unsigned, not null
#  PageText                  :integer          default(0), unsigned, not null
#  Quality                   :integer          default(0), unsigned, not null
#  RandomProperty            :integer          default(0), not null
#  RandomSuffix              :integer          default(0), unsigned, not null
#  RangedModRange            :float(24)        default(0.0), not null
#  RequiredCityRank          :integer          default(0), unsigned, not null
#  RequiredDisenchantSkill   :integer          default(-1), not null
#  RequiredLevel             :integer          default(0), unsigned, not null
#  RequiredReputationFaction :integer          default(0), unsigned, not null
#  RequiredReputationRank    :integer          default(0), unsigned, not null
#  RequiredSkill             :integer          default(0), unsigned, not null
#  RequiredSkillRank         :integer          default(0), unsigned, not null
#  ScalingStatDistribution   :integer          default(0), not null
#  ScalingStatValue          :integer          default(0), unsigned, not null
#  ScriptName                :string(64)       default(""), not null
#  SellPrice                 :integer          default(0), unsigned, not null
#  SoundOverrideSubclass     :integer          default(-1), not null
#  StatsCount                :integer          default(0), unsigned, not null
#  TotemCategory             :integer          default(0), not null
#  VerifiedBuild             :integer
#  ammo_type                 :integer          default(0), unsigned, not null
#  arcane_res                :integer
#  area                      :integer          default(0), unsigned, not null
#  armor                     :integer          default(0), unsigned, not null
#  block                     :integer          default(0), unsigned, not null
#  bonding                   :integer          default(0), unsigned, not null
#  class                     :integer          default(0), unsigned, not null
#  delay                     :integer          default(1000), unsigned, not null
#  description               :string(255)      default(""), not null
#  displayid                 :integer          default(0), unsigned, not null
#  dmg_max1                  :float(24)        default(0.0), not null
#  dmg_max2                  :float(24)        default(0.0), not null
#  dmg_min1                  :float(24)        default(0.0), not null
#  dmg_min2                  :float(24)        default(0.0), not null
#  dmg_type1                 :integer          default(0), unsigned, not null
#  dmg_type2                 :integer          default(0), unsigned, not null
#  duration                  :integer          default(0), unsigned, not null
#  entry                     :integer          default(0), unsigned, not null, primary key
#  fire_res                  :integer
#  flagsCustom               :integer          default(0), unsigned, not null
#  frost_res                 :integer
#  holy_res                  :integer
#  itemset                   :integer          default(0), unsigned, not null
#  lockid                    :integer          default(0), unsigned, not null
#  maxMoneyLoot              :integer          default(0), unsigned, not null
#  maxcount                  :integer          default(0), not null
#  minMoneyLoot              :integer          default(0), unsigned, not null
#  name                      :string(255)      default(""), not null
#  nature_res                :integer
#  requiredhonorrank         :integer          default(0), unsigned, not null
#  requiredspell             :integer          default(0), unsigned, not null
#  shadow_res                :integer
#  sheath                    :integer          default(0), unsigned, not null
#  socketBonus               :integer          default(0), not null
#  socketColor_1             :integer          default(0), not null
#  socketColor_2             :integer          default(0), not null
#  socketColor_3             :integer          default(0), not null
#  socketContent_1           :integer          default(0), not null
#  socketContent_2           :integer          default(0), not null
#  socketContent_3           :integer          default(0), not null
#  spellcategory_1           :integer          default(0), unsigned, not null
#  spellcategory_2           :integer          default(0), unsigned, not null
#  spellcategory_3           :integer          default(0), unsigned, not null
#  spellcategory_4           :integer          default(0), unsigned, not null
#  spellcategory_5           :integer          default(0), unsigned, not null
#  spellcategorycooldown_1   :integer          default(-1), not null
#  spellcategorycooldown_2   :integer          default(-1), not null
#  spellcategorycooldown_3   :integer          default(-1), not null
#  spellcategorycooldown_4   :integer          default(-1), not null
#  spellcategorycooldown_5   :integer          default(-1), not null
#  spellcharges_1            :integer          default(0), not null
#  spellcharges_2            :integer          default(0), not null
#  spellcharges_3            :integer          default(0), not null
#  spellcharges_4            :integer          default(0), not null
#  spellcharges_5            :integer          default(0), not null
#  spellcooldown_1           :integer          default(-1), not null
#  spellcooldown_2           :integer          default(-1), not null
#  spellcooldown_3           :integer          default(-1), not null
#  spellcooldown_4           :integer          default(-1), not null
#  spellcooldown_5           :integer          default(-1), not null
#  spellid_1                 :integer          default(0), not null
#  spellid_2                 :integer          default(0), not null
#  spellid_3                 :integer          default(0), not null
#  spellid_4                 :integer          default(0), not null
#  spellid_5                 :integer          default(0), not null
#  spellppmRate_1            :float(24)        default(0.0), not null
#  spellppmRate_2            :float(24)        default(0.0), not null
#  spellppmRate_3            :float(24)        default(0.0), not null
#  spellppmRate_4            :float(24)        default(0.0), not null
#  spellppmRate_5            :float(24)        default(0.0), not null
#  spelltrigger_1            :integer          default(0), unsigned, not null
#  spelltrigger_2            :integer          default(0), unsigned, not null
#  spelltrigger_3            :integer          default(0), unsigned, not null
#  spelltrigger_4            :integer          default(0), unsigned, not null
#  spelltrigger_5            :integer          default(0), unsigned, not null
#  stackable                 :integer          default(1)
#  startquest                :integer          default(0), unsigned, not null
#  stat_type1                :integer          default(0), unsigned, not null
#  stat_type10               :integer          default(0), unsigned, not null
#  stat_type2                :integer          default(0), unsigned, not null
#  stat_type3                :integer          default(0), unsigned, not null
#  stat_type4                :integer          default(0), unsigned, not null
#  stat_type5                :integer          default(0), unsigned, not null
#  stat_type6                :integer          default(0), unsigned, not null
#  stat_type7                :integer          default(0), unsigned, not null
#  stat_type8                :integer          default(0), unsigned, not null
#  stat_type9                :integer          default(0), unsigned, not null
#  stat_value1               :integer          default(0), not null
#  stat_value10              :integer          default(0), not null
#  stat_value2               :integer          default(0), not null
#  stat_value3               :integer          default(0), not null
#  stat_value4               :integer          default(0), not null
#  stat_value5               :integer          default(0), not null
#  stat_value6               :integer          default(0), not null
#  stat_value7               :integer          default(0), not null
#  stat_value8               :integer          default(0), not null
#  stat_value9               :integer          default(0), not null
#  subclass                  :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_name     (name)
#  items_index  (class)
#
module World
  class ItemTemplate < WorldApplicationRecord
    self.table_name = 'item_template'
    self.primary_key = :entry

    self.ignored_columns = %w[class]
  end
end
