# frozen_string_literal: true

# == Schema Information
#
# Table name: lfgdungeons_dbc
#
#  Description_Lang_Mask :integer          default(0), unsigned, not null
#  Description_Lang_Unk  :text(65535)
#  Description_Lang_deDE :text(65535)
#  Description_Lang_enCN :text(65535)
#  Description_Lang_enGB :text(65535)
#  Description_Lang_enTW :text(65535)
#  Description_Lang_enUS :text(65535)
#  Description_Lang_esES :text(65535)
#  Description_Lang_esMX :text(65535)
#  Description_Lang_frFR :text(65535)
#  Description_Lang_itIT :text(65535)
#  Description_Lang_koKR :text(65535)
#  Description_Lang_ptBR :text(65535)
#  Description_Lang_ptPT :text(65535)
#  Description_Lang_ruRU :text(65535)
#  Description_Lang_zhCN :text(65535)
#  Description_Lang_zhTW :text(65535)
#  Difficulty            :integer          default(0), not null
#  ExpansionLevel        :integer          default(0), not null
#  Faction               :integer          default(0), not null
#  Flags                 :integer          default(0), not null
#  Group_Id              :integer          default(0), not null
#  ID                    :integer          default(0), not null, primary key
#  MapID                 :integer          default(0), not null
#  MaxLevel              :integer          default(0), not null
#  MinLevel              :integer          default(0), not null
#  Name_Lang_Mask        :integer          default(0), unsigned, not null
#  Name_Lang_Unk         :text(65535)
#  Name_Lang_deDE        :text(65535)
#  Name_Lang_enCN        :text(65535)
#  Name_Lang_enGB        :text(65535)
#  Name_Lang_enTW        :text(65535)
#  Name_Lang_enUS        :text(65535)
#  Name_Lang_esES        :text(65535)
#  Name_Lang_esMX        :text(65535)
#  Name_Lang_frFR        :text(65535)
#  Name_Lang_itIT        :text(65535)
#  Name_Lang_koKR        :text(65535)
#  Name_Lang_ptBR        :text(65535)
#  Name_Lang_ptPT        :text(65535)
#  Name_Lang_ruRU        :text(65535)
#  Name_Lang_zhCN        :text(65535)
#  Name_Lang_zhTW        :text(65535)
#  Order_Index           :integer          default(0), not null
#  Target_Level          :integer          default(0), not null
#  Target_Level_Max      :integer          default(0), not null
#  Target_Level_Min      :integer          default(0), not null
#  TextureFilename       :text(65535)
#  TypeID                :integer          default(0), not null
#
module World
  class LfgdungeonsDbc < WorldApplicationRecord
    self.table_name = 'lfgdungeons_dbc'
    self.primary_key = :ID
  end
end
