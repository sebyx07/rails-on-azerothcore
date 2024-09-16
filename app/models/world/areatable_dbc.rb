# frozen_string_literal: true

# == Schema Information
#
# Table name: areatable_dbc
#
#  AmbienceID                  :integer          default(0), not null
#  Ambient_Multiplier          :float(24)        default(0.0), not null
#  AreaBit                     :integer          default(0), not null
#  AreaName_Lang_Mask          :integer          default(0), unsigned, not null
#  AreaName_Lang_Unk           :string(100)
#  AreaName_Lang_deDE          :string(100)
#  AreaName_Lang_enCN          :string(100)
#  AreaName_Lang_enGB          :string(100)
#  AreaName_Lang_enTW          :string(100)
#  AreaName_Lang_enUS          :string(100)
#  AreaName_Lang_esES          :string(100)
#  AreaName_Lang_esMX          :string(100)
#  AreaName_Lang_frFR          :string(100)
#  AreaName_Lang_itIT          :string(100)
#  AreaName_Lang_koKR          :string(100)
#  AreaName_Lang_ptBR          :string(100)
#  AreaName_Lang_ptPT          :string(100)
#  AreaName_Lang_ruRU          :string(100)
#  AreaName_Lang_zhCN          :string(100)
#  AreaName_Lang_zhTW          :string(100)
#  ContinentID                 :integer          default(0), not null
#  ExplorationLevel            :integer          default(0), not null
#  FactionGroupMask            :integer          default(0), not null
#  Flags                       :integer          default(0), not null
#  ID                          :integer          default(0), not null, primary key
#  IntroSound                  :integer          default(0), not null
#  Lightid                     :integer          default(0), not null
#  LiquidTypeID_1              :integer          default(0), not null
#  LiquidTypeID_2              :integer          default(0), not null
#  LiquidTypeID_3              :integer          default(0), not null
#  LiquidTypeID_4              :integer          default(0), not null
#  MinElevation                :float(24)        default(0.0), not null
#  ParentAreaID                :integer          default(0), not null
#  SoundProviderPref           :integer          default(0), not null
#  SoundProviderPrefUnderwater :integer          default(0), not null
#  ZoneMusic                   :integer          default(0), not null
#
module World
  class AreatableDbc < WorldApplicationRecord
    self.table_name = 'areatable_dbc'
    self.primary_key = 'ID'
  end
end
