# frozen_string_literal: true

# == Schema Information
#
# Table name: spellshapeshiftform_dbc
#
#  AttackIconID        :integer          default(0), not null
#  BonusActionBar      :integer          default(0), not null
#  CombatRoundTime     :integer          default(0), not null
#  CreatureDisplayID_1 :integer          default(0), not null
#  CreatureDisplayID_2 :integer          default(0), not null
#  CreatureDisplayID_3 :integer          default(0), not null
#  CreatureDisplayID_4 :integer          default(0), not null
#  CreatureType        :integer          default(0), not null
#  Flags               :integer          default(0), not null
#  ID                  :integer          default(0), not null, primary key
#  Name_Lang_Mask      :integer          default(0), unsigned, not null
#  Name_Lang_Unk       :string(100)
#  Name_Lang_deDE      :string(100)
#  Name_Lang_enCN      :string(100)
#  Name_Lang_enGB      :string(100)
#  Name_Lang_enTW      :string(100)
#  Name_Lang_enUS      :string(100)
#  Name_Lang_esES      :string(100)
#  Name_Lang_esMX      :string(100)
#  Name_Lang_frFR      :string(100)
#  Name_Lang_itIT      :string(100)
#  Name_Lang_koKR      :string(100)
#  Name_Lang_ptBR      :string(100)
#  Name_Lang_ptPT      :string(100)
#  Name_Lang_ruRU      :string(100)
#  Name_Lang_zhCN      :string(100)
#  Name_Lang_zhTW      :string(100)
#  PresetSpellID_1     :integer          default(0), not null
#  PresetSpellID_2     :integer          default(0), not null
#  PresetSpellID_3     :integer          default(0), not null
#  PresetSpellID_4     :integer          default(0), not null
#  PresetSpellID_5     :integer          default(0), not null
#  PresetSpellID_6     :integer          default(0), not null
#  PresetSpellID_7     :integer          default(0), not null
#  PresetSpellID_8     :integer          default(0), not null
#
module World
  class SpellshapeshiftformDbc < WorldApplicationRecord
    self.table_name = 'spellshapeshiftform_dbc'
    self.primary_key = 'ID'
  end
end
