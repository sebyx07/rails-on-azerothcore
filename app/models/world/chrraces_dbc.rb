# frozen_string_literal: true

# == Schema Information
#
# Table name: chrraces_dbc
#
#  Alliance                  :integer          default(0), not null
#  BaseLanguage              :integer          default(0), not null
#  CinematicSequenceID       :integer          default(0), not null
#  ClientFilestring          :string(100)
#  ClientPrefix              :string(100)
#  CreatureType              :integer          default(0), not null
#  ExplorationSoundID        :integer          default(0), not null
#  FacialHairCustomization_1 :string(100)
#  FacialHairCustomization_2 :string(100)
#  FactionID                 :integer          default(0), not null
#  FemaleDisplayId           :integer          default(0), not null
#  Flags                     :integer          default(0), not null
#  HairCustomization         :string(100)
#  ID                        :integer          default(0), not null, primary key
#  MaleDisplayId             :integer          default(0), not null
#  Name_Female_Lang_Mask     :integer          default(0), unsigned, not null
#  Name_Female_Lang_Unk      :string(100)
#  Name_Female_Lang_deDE     :string(100)
#  Name_Female_Lang_enCN     :string(100)
#  Name_Female_Lang_enGB     :string(100)
#  Name_Female_Lang_enTW     :string(100)
#  Name_Female_Lang_enUS     :string(100)
#  Name_Female_Lang_esES     :string(100)
#  Name_Female_Lang_esMX     :string(100)
#  Name_Female_Lang_frFR     :string(100)
#  Name_Female_Lang_itIT     :string(100)
#  Name_Female_Lang_koKR     :string(100)
#  Name_Female_Lang_ptBR     :string(100)
#  Name_Female_Lang_ptPT     :string(100)
#  Name_Female_Lang_ruRU     :string(100)
#  Name_Female_Lang_zhCN     :string(100)
#  Name_Female_Lang_zhTW     :string(100)
#  Name_Lang_Mask            :integer          default(0), unsigned, not null
#  Name_Lang_Unk             :string(100)
#  Name_Lang_deDE            :string(100)
#  Name_Lang_enCN            :string(100)
#  Name_Lang_enGB            :string(100)
#  Name_Lang_enTW            :string(100)
#  Name_Lang_enUS            :string(100)
#  Name_Lang_esES            :string(100)
#  Name_Lang_esMX            :string(100)
#  Name_Lang_frFR            :string(100)
#  Name_Lang_itIT            :string(100)
#  Name_Lang_koKR            :string(100)
#  Name_Lang_ptBR            :string(100)
#  Name_Lang_ptPT            :string(100)
#  Name_Lang_ruRU            :string(100)
#  Name_Lang_zhCN            :string(100)
#  Name_Lang_zhTW            :string(100)
#  Name_Male_Lang_Mask       :integer          default(0), unsigned, not null
#  Name_Male_Lang_Unk        :string(100)
#  Name_Male_Lang_deDE       :string(100)
#  Name_Male_Lang_enCN       :string(100)
#  Name_Male_Lang_enGB       :string(100)
#  Name_Male_Lang_enTW       :string(100)
#  Name_Male_Lang_enUS       :string(100)
#  Name_Male_Lang_esES       :string(100)
#  Name_Male_Lang_esMX       :string(100)
#  Name_Male_Lang_frFR       :string(100)
#  Name_Male_Lang_itIT       :string(100)
#  Name_Male_Lang_koKR       :string(100)
#  Name_Male_Lang_ptBR       :string(100)
#  Name_Male_Lang_ptPT       :string(100)
#  Name_Male_Lang_ruRU       :string(100)
#  Name_Male_Lang_zhCN       :string(100)
#  Name_Male_Lang_zhTW       :string(100)
#  Required_Expansion        :integer          default(0), not null
#  ResSicknessSpellID        :integer          default(0), not null
#  SplashSoundID             :integer          default(0), not null
#
module World
  class ChrracesDbc < WorldApplicationRecord
    self.table_name = 'chrraces_dbc'
    self.primary_key = 'ID'
  end
end
