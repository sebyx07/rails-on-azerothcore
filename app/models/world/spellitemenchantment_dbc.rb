# frozen_string_literal: true

# == Schema Information
#
# Table name: spellitemenchantment_dbc
#
#  Charges           :integer          default(0), not null
#  Condition_Id      :integer          default(0), not null
#  EffectArg_1       :integer          default(0), not null
#  EffectArg_2       :integer          default(0), not null
#  EffectArg_3       :integer          default(0), not null
#  EffectPointsMax_1 :integer          default(0), not null
#  EffectPointsMax_2 :integer          default(0), not null
#  EffectPointsMax_3 :integer          default(0), not null
#  EffectPointsMin_1 :integer          default(0), not null
#  EffectPointsMin_2 :integer          default(0), not null
#  EffectPointsMin_3 :integer          default(0), not null
#  Effect_1          :integer          default(0), not null
#  Effect_2          :integer          default(0), not null
#  Effect_3          :integer          default(0), not null
#  Flags             :integer          default(0), not null
#  ID                :integer          default(0), not null, primary key
#  ItemVisual        :integer          default(0), not null
#  MinLevel          :integer          default(0), not null
#  Name_Lang_Mask    :integer          default(0), unsigned, not null
#  Name_Lang_Unk     :string(100)
#  Name_Lang_deDE    :string(100)
#  Name_Lang_enCN    :string(100)
#  Name_Lang_enGB    :string(100)
#  Name_Lang_enTW    :string(100)
#  Name_Lang_enUS    :string(100)
#  Name_Lang_esES    :string(100)
#  Name_Lang_esMX    :string(100)
#  Name_Lang_frFR    :string(100)
#  Name_Lang_itIT    :string(100)
#  Name_Lang_koKR    :string(100)
#  Name_Lang_ptBR    :string(100)
#  Name_Lang_ptPT    :string(100)
#  Name_Lang_ruRU    :string(100)
#  Name_Lang_zhCN    :string(100)
#  Name_Lang_zhTW    :string(100)
#  RequiredSkillID   :integer          default(0), not null
#  RequiredSkillRank :integer          default(0), not null
#  Src_ItemID        :integer          default(0), not null
#
module World
  class SpellitemenchantmentDbc < WorldApplicationRecord
    self.table_name = 'spellitemenchantment_dbc'
    self.primary_key = 'ID'
  end
end
