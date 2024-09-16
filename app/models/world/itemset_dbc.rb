# frozen_string_literal: true

# == Schema Information
#
# Table name: itemset_dbc
#
#  ID                :integer          default(0), not null, primary key
#  ItemID_1          :integer          default(0), not null
#  ItemID_10         :integer          default(0), not null
#  ItemID_11         :integer          default(0), not null
#  ItemID_12         :integer          default(0), not null
#  ItemID_13         :integer          default(0), not null
#  ItemID_14         :integer          default(0), not null
#  ItemID_15         :integer          default(0), not null
#  ItemID_16         :integer          default(0), not null
#  ItemID_17         :integer          default(0), not null
#  ItemID_2          :integer          default(0), not null
#  ItemID_3          :integer          default(0), not null
#  ItemID_4          :integer          default(0), not null
#  ItemID_5          :integer          default(0), not null
#  ItemID_6          :integer          default(0), not null
#  ItemID_7          :integer          default(0), not null
#  ItemID_8          :integer          default(0), not null
#  ItemID_9          :integer          default(0), not null
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
#  RequiredSkill     :integer          default(0), not null
#  RequiredSkillRank :integer          default(0), not null
#  SetSpellID_1      :integer          default(0), not null
#  SetSpellID_2      :integer          default(0), not null
#  SetSpellID_3      :integer          default(0), not null
#  SetSpellID_4      :integer          default(0), not null
#  SetSpellID_5      :integer          default(0), not null
#  SetSpellID_6      :integer          default(0), not null
#  SetSpellID_7      :integer          default(0), not null
#  SetSpellID_8      :integer          default(0), not null
#  SetThreshold_1    :integer          default(0), not null
#  SetThreshold_2    :integer          default(0), not null
#  SetThreshold_3    :integer          default(0), not null
#  SetThreshold_4    :integer          default(0), not null
#  SetThreshold_5    :integer          default(0), not null
#  SetThreshold_6    :integer          default(0), not null
#  SetThreshold_7    :integer          default(0), not null
#  SetThreshold_8    :integer          default(0), not null
#
module World
  class ItemsetDbc < WorldApplicationRecord
    self.table_name = 'itemset_dbc'
    self.primary_key = :ID
  end
end
