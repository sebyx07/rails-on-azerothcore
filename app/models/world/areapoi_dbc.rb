# frozen_string_literal: true

# == Schema Information
#
# Table name: areapoi_dbc
#
#  AreaID                :integer          default(0), not null
#  ContinentID           :integer          default(0), not null
#  Description_Lang_Mask :integer          default(0), unsigned, not null
#  Description_Lang_Unk  :string(100)
#  Description_Lang_deDE :string(100)
#  Description_Lang_enCN :string(100)
#  Description_Lang_enGB :string(100)
#  Description_Lang_enTW :string(100)
#  Description_Lang_enUS :string(100)
#  Description_Lang_esES :string(100)
#  Description_Lang_esMX :string(100)
#  Description_Lang_frFR :string(100)
#  Description_Lang_itIT :string(100)
#  Description_Lang_koKR :string(100)
#  Description_Lang_ptBR :string(100)
#  Description_Lang_ptPT :string(100)
#  Description_Lang_ruRU :string(100)
#  Description_Lang_zhCN :string(100)
#  Description_Lang_zhTW :string(100)
#  FactionID             :integer          default(0), not null
#  Flags                 :integer          default(0), not null
#  ID                    :integer          default(0), not null, primary key
#  Icon_1                :integer          default(0), not null
#  Icon_2                :integer          default(0), not null
#  Icon_3                :integer          default(0), not null
#  Icon_4                :integer          default(0), not null
#  Icon_5                :integer          default(0), not null
#  Icon_6                :integer          default(0), not null
#  Icon_7                :integer          default(0), not null
#  Icon_8                :integer          default(0), not null
#  Icon_9                :integer          default(0), not null
#  Importance            :integer          default(0), not null
#  Name_Lang_Mask        :integer          default(0), unsigned, not null
#  Name_Lang_Unk         :string(100)
#  Name_Lang_deDE        :string(100)
#  Name_Lang_enCN        :string(100)
#  Name_Lang_enGB        :string(100)
#  Name_Lang_enTW        :string(100)
#  Name_Lang_enUS        :string(100)
#  Name_Lang_esES        :string(100)
#  Name_Lang_esMX        :string(100)
#  Name_Lang_frFR        :string(100)
#  Name_Lang_itIT        :string(100)
#  Name_Lang_koKR        :string(100)
#  Name_Lang_ptBR        :string(100)
#  Name_Lang_ptPT        :string(100)
#  Name_Lang_ruRU        :string(100)
#  Name_Lang_zhCN        :string(100)
#  Name_Lang_zhTW        :string(100)
#  WorldMapLink          :integer          default(0), not null
#  WorldStateID          :integer          default(0), not null
#  X                     :float(24)        default(0.0), not null
#  Y                     :float(24)        default(0.0), not null
#  Z                     :float(24)        default(0.0), not null
#
module World
  class AreapoiDbc < WorldApplicationRecord
    self.table_name = 'areapoi_dbc'
    self.primary_key = 'ID'
  end
end
