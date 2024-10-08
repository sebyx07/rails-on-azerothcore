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
    include FixDangerousColumnsConcern

    self.table_name = 'item_template'
    self.primary_key = :entry

    # generated stuff

    alias_attribute :c_class, :class

    alias_attribute :allowable_class, :AllowableClass
    alias_attribute :allowable_race, :AllowableRace
    alias_attribute :armor_damage_modifier, :ArmorDamageModifier
    alias_attribute :bag_family, :BagFamily
    alias_attribute :buy_count, :BuyCount
    alias_attribute :buy_price, :BuyPrice
    alias_attribute :container_slots, :ContainerSlots
    alias_attribute :disenchant_id, :DisenchantID
    alias_attribute :flags, :Flags
    alias_attribute :flags_custom, :flagsCustom
    alias_attribute :flags_extra, :FlagsExtra
    alias_attribute :food_type, :FoodType
    alias_attribute :gem_properties, :GemProperties
    alias_attribute :holiday_id, :HolidayId
    alias_attribute :inventory_type, :InventoryType
    alias_attribute :item_level, :ItemLevel
    alias_attribute :item_limit_category, :ItemLimitCategory
    alias_attribute :language_id, :LanguageID
    alias_attribute :map, :Map
    alias_attribute :material, :Material
    alias_attribute :min_money_loot, :minMoneyLoot
    alias_attribute :max_money_loot, :maxMoneyLoot
    alias_attribute :max_durability, :MaxDurability
    alias_attribute :page_material, :PageMaterial
    alias_attribute :page_text, :PageText
    alias_attribute :random_property, :RandomProperty
    alias_attribute :random_suffix, :RandomSuffix
    alias_attribute :ranged_mod_range, :RangedModRange
    alias_attribute :required_city_rank, :RequiredCityRank
    alias_attribute :required_disenchant_skill, :RequiredDisenchantSkill
    alias_attribute :required_level, :RequiredLevel
    alias_attribute :required_reputation_faction, :RequiredReputationFaction
    alias_attribute :required_reputation_rank, :RequiredReputationRank
    alias_attribute :required_skill, :RequiredSkill
    alias_attribute :required_skill_rank, :RequiredSkillRank
    alias_attribute :socket_bonus, :socketBonus
    alias_attribute :scaling_stat_distribution, :ScalingStatDistribution
    alias_attribute :scaling_stat_value, :ScalingStatValue
    alias_attribute :script_name, :ScriptName
    alias_attribute :sell_price, :SellPrice
    alias_attribute :sound_override_subclass, :SoundOverrideSubclass
    alias_attribute :stats_count, :StatsCount
    alias_attribute :totem_category, :TotemCategory
    alias_attribute :verified_build, :VerifiedBuild

    alias_attribute :display_id, :displayid
    alias_attribute :max_count, :maxcount
    alias_attribute :required_honor_rank, :requiredhonorrank
    alias_attribute :required_spell, :requiredspell
    alias_attribute :start_quest, :startquest
    alias_attribute :quality, :Quality

    (1..5).each do |i|
      alias_attribute "spell_id_#{i}", "spellid_#{i}"
      alias_attribute "spell_trigger_#{i}", "spelltrigger_#{i}"
      alias_attribute "spell_charges_#{i}", "spellcharges_#{i}"
      alias_attribute "spell_cooldown_#{i}", "spellcooldown_#{i}"
      alias_attribute "spell_category_#{i}", "spellcategory_#{i}"
      alias_attribute "spell_category_cooldown_#{i}", "spellcategorycooldown_#{i}"
      alias_attribute "spell_ppm_rate_#{i}", "spellppmRate_#{i}"
    end

    (1..10).each do |i|
      alias_attribute "stat_type_#{i}", "stat_type#{i}"
      alias_attribute "stat_value_#{i}", "stat_value#{i}"
    end

    (1..3).each do |i|
      alias_attribute "socket_color_#{i}", "socketColor_#{i}"
      alias_attribute "socket_content_#{i}", "socketContent_#{i}"
    end

    (1..2).each do |i|
      alias_attribute "dmg_min_#{i}", "dmg_min#{i}"
      alias_attribute "dmg_max_#{i}", "dmg_max#{i}"
      alias_attribute "dmg_type_#{i}", "dmg_type#{i}"
    end

    validates :entry, presence: true, uniqueness: true
    validates :name, presence: true, length: { maximum: 255 }
    validates :description, length: { maximum: 255 }
    validates :ScriptName, length: { maximum: 64 }

    validates :AllowableClass, :AllowableRace, :RequiredDisenchantSkill,
              numericality: { only_integer: true, greater_than_or_equal_to: -1 }

    validates :BuyCount, :ContainerSlots, :DisenchantID, :Flags, :FlagsExtra, :FoodType,
              :HolidayId, :InventoryType, :ItemLevel, :MaxDurability, :PageMaterial,
              :PageText, :Quality, :RandomSuffix, :RequiredCityRank, :RequiredLevel,
              :RequiredReputationFaction, :RequiredReputationRank, :RequiredSkill,
              :RequiredSkillRank, :ScalingStatValue, :SellPrice, :StatsCount,
              :ammo_type, :area, :armor, :block, :bonding, :c_class, :delay, :displayid,
              :duration, :itemset, :lockid, :maxMoneyLoot, :minMoneyLoot, :requiredhonorrank,
              :requiredspell, :sheath, :startquest, :subclass,
              numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    validates :ArmorDamageModifier, :RangedModRange, :dmg_max1, :dmg_max2, :dmg_min1, :dmg_min2,
              numericality: true

    validates :BuyPrice, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    validates :stackable, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

    validates :maxcount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    (1..5).each do |i|
      validates "spellid_#{i}", "spellcharges_#{i}",
                numericality: { only_integer: true, greater_than_or_equal_to: 0 }
      validates "spelltrigger_#{i}", "spellcategory_#{i}",
                numericality: { only_integer: true, greater_than_or_equal_to: 0 }
      validates "spellcooldown_#{i}", "spellcategorycooldown_#{i}",
                numericality: { only_integer: true, greater_than_or_equal_to: -1 }
      validates "spellppmRate_#{i}", numericality: true
    end

    (1..10).each do |i|
      validates "stat_type#{i}", numericality: { only_integer: true, greater_than_or_equal_to: 0 }
      validates "stat_value#{i}", numericality: { only_integer: true }
    end

    # Validations for socket-related fields
    (1..3).each do |i|
      validates "socketColor_#{i}", "socketContent_#{i}",
                numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    end

    validate :validate_dmg_fields

    private
      def validate_dmg_fields
        if dmg_min1 > dmg_max1
          errors.add(:dmg_min1, 'cannot be greater than dmg_max1')
        end
        if dmg_min2 > dmg_max2
          errors.add(:dmg_min2, 'cannot be greater than dmg_max2')
        end
      end
  end
end
