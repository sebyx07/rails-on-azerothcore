# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_dbc
#
#  ActiveIconID               :integer          default(0), unsigned, not null
#  Attributes                 :integer          default(0), unsigned, not null
#  AttributesEx               :integer          default(0), unsigned, not null
#  AttributesEx2              :integer          default(0), unsigned, not null
#  AttributesEx3              :integer          default(0), unsigned, not null
#  AttributesEx4              :integer          default(0), unsigned, not null
#  AttributesEx5              :integer          default(0), unsigned, not null
#  AttributesEx6              :integer          default(0), unsigned, not null
#  AttributesEx7              :integer          default(0), unsigned, not null
#  AuraDescription_Lang_Mask  :integer          default(0), unsigned, not null
#  AuraDescription_Lang_Unk   :string(100)
#  AuraDescription_Lang_deDE  :string(550)
#  AuraDescription_Lang_enCN  :string(550)
#  AuraDescription_Lang_enGB  :string(550)
#  AuraDescription_Lang_enTW  :string(550)
#  AuraDescription_Lang_enUS  :string(550)
#  AuraDescription_Lang_esES  :string(550)
#  AuraDescription_Lang_esMX  :string(550)
#  AuraDescription_Lang_frFR  :string(550)
#  AuraDescription_Lang_itIT  :string(550)
#  AuraDescription_Lang_koKR  :string(550)
#  AuraDescription_Lang_ptBR  :string(550)
#  AuraDescription_Lang_ptPT  :string(550)
#  AuraDescription_Lang_ruRU  :string(550)
#  AuraDescription_Lang_zhCN  :string(550)
#  AuraDescription_Lang_zhTW  :string(550)
#  AuraInterruptFlags         :integer          default(0), unsigned, not null
#  BaseLevel                  :integer          default(0), unsigned, not null
#  CasterAuraSpell            :integer          default(0), unsigned, not null
#  CasterAuraState            :integer          default(0), unsigned, not null
#  CastingTimeIndex           :integer          default(0), unsigned, not null
#  Category                   :integer          default(0), unsigned, not null
#  CategoryRecoveryTime       :integer          default(0), unsigned, not null
#  ChannelInterruptFlags      :integer          default(0), unsigned, not null
#  CumulativeAura             :integer          default(0), unsigned, not null
#  DefenseType                :integer          default(0), unsigned, not null
#  Description_Lang_Mask      :integer          default(0), unsigned, not null
#  Description_Lang_Unk       :text(65535)
#  Description_Lang_deDE      :text(65535)
#  Description_Lang_enCN      :text(65535)
#  Description_Lang_enGB      :text(65535)
#  Description_Lang_enTW      :text(65535)
#  Description_Lang_enUS      :text(65535)
#  Description_Lang_esES      :text(65535)
#  Description_Lang_esMX      :text(65535)
#  Description_Lang_frFR      :text(65535)
#  Description_Lang_itIT      :text(65535)
#  Description_Lang_koKR      :text(65535)
#  Description_Lang_ptBR      :text(65535)
#  Description_Lang_ptPT      :text(65535)
#  Description_Lang_ruRU      :text(65535)
#  Description_Lang_zhCN      :text(65535)
#  Description_Lang_zhTW      :text(65535)
#  DispelType                 :integer          default(0), unsigned, not null
#  DurationIndex              :integer          default(0), unsigned, not null
#  EffectAuraPeriod_1         :integer          default(0), unsigned, not null
#  EffectAuraPeriod_2         :integer          default(0), unsigned, not null
#  EffectAuraPeriod_3         :integer          default(0), unsigned, not null
#  EffectAura_1               :integer          default(0), unsigned, not null
#  EffectAura_2               :integer          default(0), unsigned, not null
#  EffectAura_3               :integer          default(0), unsigned, not null
#  EffectBasePoints_1         :integer          default(0), not null
#  EffectBasePoints_2         :integer          default(0), not null
#  EffectBasePoints_3         :integer          default(0), not null
#  EffectBonusMultiplier_1    :float(24)        default(0.0), not null
#  EffectBonusMultiplier_2    :float(24)        default(0.0), not null
#  EffectBonusMultiplier_3    :float(24)        default(0.0), not null
#  EffectChainAmplitude_1     :float(24)        default(0.0), not null
#  EffectChainAmplitude_2     :float(24)        default(0.0), not null
#  EffectChainAmplitude_3     :float(24)        default(0.0), not null
#  EffectChainTargets_1       :integer          default(0), unsigned, not null
#  EffectChainTargets_2       :integer          default(0), unsigned, not null
#  EffectChainTargets_3       :integer          default(0), unsigned, not null
#  EffectDieSides_1           :integer          default(0), not null
#  EffectDieSides_2           :integer          default(0), not null
#  EffectDieSides_3           :integer          default(0), not null
#  EffectItemType_1           :integer          default(0), unsigned, not null
#  EffectItemType_2           :integer          default(0), unsigned, not null
#  EffectItemType_3           :integer          default(0), unsigned, not null
#  EffectMechanic_1           :integer          default(0), unsigned, not null
#  EffectMechanic_2           :integer          default(0), unsigned, not null
#  EffectMechanic_3           :integer          default(0), unsigned, not null
#  EffectMiscValueB_1         :integer          default(0), not null
#  EffectMiscValueB_2         :integer          default(0), not null
#  EffectMiscValueB_3         :integer          default(0), not null
#  EffectMiscValue_1          :integer          default(0), not null
#  EffectMiscValue_2          :integer          default(0), not null
#  EffectMiscValue_3          :integer          default(0), not null
#  EffectMultipleValue_1      :float(24)        default(0.0), not null
#  EffectMultipleValue_2      :float(24)        default(0.0), not null
#  EffectMultipleValue_3      :float(24)        default(0.0), not null
#  EffectPointsPerCombo_1     :float(24)        default(0.0), not null
#  EffectPointsPerCombo_2     :float(24)        default(0.0), not null
#  EffectPointsPerCombo_3     :float(24)        default(0.0), not null
#  EffectRadiusIndex_1        :integer          default(0), unsigned, not null
#  EffectRadiusIndex_2        :integer          default(0), unsigned, not null
#  EffectRadiusIndex_3        :integer          default(0), unsigned, not null
#  EffectRealPointsPerLevel_1 :float(24)        default(0.0), not null
#  EffectRealPointsPerLevel_2 :float(24)        default(0.0), not null
#  EffectRealPointsPerLevel_3 :float(24)        default(0.0), not null
#  EffectSpellClassMaskA_1    :integer          default(0), unsigned, not null
#  EffectSpellClassMaskA_2    :integer          default(0), unsigned, not null
#  EffectSpellClassMaskA_3    :integer          default(0), unsigned, not null
#  EffectSpellClassMaskB_1    :integer          default(0), unsigned, not null
#  EffectSpellClassMaskB_2    :integer          default(0), unsigned, not null
#  EffectSpellClassMaskB_3    :integer          default(0), unsigned, not null
#  EffectSpellClassMaskC_1    :integer          default(0), unsigned, not null
#  EffectSpellClassMaskC_2    :integer          default(0), unsigned, not null
#  EffectSpellClassMaskC_3    :integer          default(0), unsigned, not null
#  EffectTriggerSpell_1       :integer          default(0), unsigned, not null
#  EffectTriggerSpell_2       :integer          default(0), unsigned, not null
#  EffectTriggerSpell_3       :integer          default(0), unsigned, not null
#  Effect_1                   :integer          default(0), unsigned, not null
#  Effect_2                   :integer          default(0), unsigned, not null
#  Effect_3                   :integer          default(0), unsigned, not null
#  EquippedItemClass          :integer          default(0), not null
#  EquippedItemInvTypes       :integer          default(0), not null
#  EquippedItemSubclass       :integer          default(0), not null
#  ExcludeCasterAuraSpell     :integer          default(0), unsigned, not null
#  ExcludeCasterAuraState     :integer          default(0), unsigned, not null
#  ExcludeTargetAuraSpell     :integer          default(0), unsigned, not null
#  ExcludeTargetAuraState     :integer          default(0), unsigned, not null
#  FacingCasterFlags          :integer          default(0), unsigned, not null
#  ID                         :integer          default(0), not null, primary key
#  ImplicitTargetA_1          :integer          default(0), unsigned, not null
#  ImplicitTargetA_2          :integer          default(0), unsigned, not null
#  ImplicitTargetA_3          :integer          default(0), unsigned, not null
#  ImplicitTargetB_1          :integer          default(0), unsigned, not null
#  ImplicitTargetB_2          :integer          default(0), unsigned, not null
#  ImplicitTargetB_3          :integer          default(0), unsigned, not null
#  InterruptFlags             :integer          default(0), unsigned, not null
#  ManaCost                   :integer          default(0), unsigned, not null
#  ManaCostPct                :integer          default(0), unsigned, not null
#  ManaCostPerLevel           :integer          default(0), unsigned, not null
#  ManaPerSecond              :integer          default(0), unsigned, not null
#  ManaPerSecondPerLevel      :integer          default(0), unsigned, not null
#  MaxLevel                   :integer          default(0), unsigned, not null
#  MaxTargetLevel             :integer          default(0), unsigned, not null
#  MaxTargets                 :integer          default(0), unsigned, not null
#  Mechanic                   :integer          default(0), unsigned, not null
#  MinFactionID               :integer          default(0), unsigned, not null
#  MinReputation              :integer          default(0), unsigned, not null
#  ModalNextSpell             :integer          default(0), unsigned, not null
#  NameSubtext_Lang_Mask      :integer          default(0), unsigned, not null
#  NameSubtext_Lang_Unk       :string(100)
#  NameSubtext_Lang_deDE      :string(100)
#  NameSubtext_Lang_enCN      :string(100)
#  NameSubtext_Lang_enGB      :string(100)
#  NameSubtext_Lang_enTW      :string(100)
#  NameSubtext_Lang_enUS      :string(100)
#  NameSubtext_Lang_esES      :string(100)
#  NameSubtext_Lang_esMX      :string(100)
#  NameSubtext_Lang_frFR      :string(100)
#  NameSubtext_Lang_itIT      :string(100)
#  NameSubtext_Lang_koKR      :string(100)
#  NameSubtext_Lang_ptBR      :string(100)
#  NameSubtext_Lang_ptPT      :string(100)
#  NameSubtext_Lang_ruRU      :string(100)
#  NameSubtext_Lang_zhCN      :string(100)
#  NameSubtext_Lang_zhTW      :string(100)
#  Name_Lang_Mask             :integer          default(0), unsigned, not null
#  Name_Lang_Unk              :string(100)
#  Name_Lang_deDE             :string(100)
#  Name_Lang_enCN             :string(100)
#  Name_Lang_enGB             :string(100)
#  Name_Lang_enTW             :string(100)
#  Name_Lang_enUS             :string(100)
#  Name_Lang_esES             :string(100)
#  Name_Lang_esMX             :string(100)
#  Name_Lang_frFR             :string(100)
#  Name_Lang_itIT             :string(100)
#  Name_Lang_koKR             :string(100)
#  Name_Lang_ptBR             :string(100)
#  Name_Lang_ptPT             :string(100)
#  Name_Lang_ruRU             :string(100)
#  Name_Lang_zhCN             :string(100)
#  Name_Lang_zhTW             :string(100)
#  PowerDisplayID             :integer          default(0), not null
#  PowerType                  :integer          default(0), not null
#  PreventionType             :integer          default(0), unsigned, not null
#  ProcChance                 :integer          default(0), unsigned, not null
#  ProcCharges                :integer          default(0), unsigned, not null
#  ProcTypeMask               :integer          default(0), unsigned, not null
#  RangeIndex                 :integer          default(0), unsigned, not null
#  ReagentCount_1             :integer          default(0), not null
#  ReagentCount_2             :integer          default(0), not null
#  ReagentCount_3             :integer          default(0), not null
#  ReagentCount_4             :integer          default(0), not null
#  ReagentCount_5             :integer          default(0), not null
#  ReagentCount_6             :integer          default(0), not null
#  ReagentCount_7             :integer          default(0), not null
#  ReagentCount_8             :integer          default(0), not null
#  Reagent_1                  :integer          default(0), not null
#  Reagent_2                  :integer          default(0), not null
#  Reagent_3                  :integer          default(0), not null
#  Reagent_4                  :integer          default(0), not null
#  Reagent_5                  :integer          default(0), not null
#  Reagent_6                  :integer          default(0), not null
#  Reagent_7                  :integer          default(0), not null
#  Reagent_8                  :integer          default(0), not null
#  RecoveryTime               :integer          default(0), unsigned, not null
#  RequiredAreasID            :integer          default(0), not null
#  RequiredAuraVision         :integer          default(0), unsigned, not null
#  RequiredTotemCategoryID_1  :integer          default(0), unsigned, not null
#  RequiredTotemCategoryID_2  :integer          default(0), unsigned, not null
#  RequiresSpellFocus         :integer          default(0), unsigned, not null
#  RuneCostID                 :integer          default(0), unsigned, not null
#  SchoolMask                 :integer          default(0), unsigned, not null
#  ShapeshiftExclude          :bigint           default(0), unsigned, not null
#  ShapeshiftMask             :bigint           default(0), unsigned, not null
#  Speed                      :float(24)        default(0.0), not null
#  SpellClassMask_1           :integer          default(0), unsigned, not null
#  SpellClassMask_2           :integer          default(0), unsigned, not null
#  SpellClassMask_3           :integer          default(0), unsigned, not null
#  SpellClassSet              :integer          default(0), unsigned, not null
#  SpellDescriptionVariableID :integer          default(0), unsigned, not null
#  SpellDifficultyID          :integer          default(0), unsigned, not null
#  SpellIconID                :integer          default(0), unsigned, not null
#  SpellLevel                 :integer          default(0), unsigned, not null
#  SpellMissileID             :integer          default(0), unsigned, not null
#  SpellPriority              :integer          default(0), unsigned, not null
#  SpellVisualID_1            :integer          default(0), unsigned, not null
#  SpellVisualID_2            :integer          default(0), unsigned, not null
#  StanceBarOrder             :integer          default(0), unsigned, not null
#  StartRecoveryCategory      :integer          default(0), unsigned, not null
#  StartRecoveryTime          :integer          default(0), unsigned, not null
#  TargetAuraSpell            :integer          default(0), unsigned, not null
#  TargetAuraState            :integer          default(0), unsigned, not null
#  TargetCreatureType         :integer          default(0), unsigned, not null
#  Targets                    :integer          default(0), unsigned, not null
#  Totem_1                    :integer          default(0), unsigned, not null
#  Totem_2                    :integer          default(0), unsigned, not null
#  unk_320_2                  :integer          default(0), not null
#  unk_320_3                  :integer          default(0), not null
#
module World
  class SpellDbc < WorldApplicationRecord
    self.table_name = 'spell_dbc'
    self.primary_key = 'ID'
  end
end
