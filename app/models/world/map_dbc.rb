# frozen_string_literal: true

# == Schema Information
#
# Table name: map_dbc
#
#  AreaTableID               :integer          default(0), not null
#  CorpseMapID               :integer          default(0), not null
#  CorpseX                   :float(24)        default(0.0), not null
#  CorpseY                   :float(24)        default(0.0), not null
#  Directory                 :string(100)
#  ExpansionID               :integer          default(0), not null
#  Flags                     :integer          default(0), not null
#  ID                        :integer          default(0), not null, primary key
#  InstanceType              :integer          default(0), not null
#  LoadingScreenID           :integer          default(0), not null
#  MapDescription0_Lang_Mask :integer          default(0), unsigned, not null
#  MapDescription0_Lang_Unk  :string(100)
#  MapDescription0_Lang_deDE :text(65535)
#  MapDescription0_Lang_enCN :text(65535)
#  MapDescription0_Lang_enGB :text(65535)
#  MapDescription0_Lang_enTW :text(65535)
#  MapDescription0_Lang_enUS :text(65535)
#  MapDescription0_Lang_esES :text(65535)
#  MapDescription0_Lang_esMX :text(65535)
#  MapDescription0_Lang_frFR :text(65535)
#  MapDescription0_Lang_itIT :text(65535)
#  MapDescription0_Lang_koKR :text(65535)
#  MapDescription0_Lang_ptBR :text(65535)
#  MapDescription0_Lang_ptPT :text(65535)
#  MapDescription0_Lang_ruRU :text(65535)
#  MapDescription0_Lang_zhCN :text(65535)
#  MapDescription0_Lang_zhTW :text(65535)
#  MapDescription1_Lang_Mask :integer          default(0), unsigned, not null
#  MapDescription1_Lang_Unk  :string(100)
#  MapDescription1_Lang_deDE :text(65535)
#  MapDescription1_Lang_enCN :text(65535)
#  MapDescription1_Lang_enGB :text(65535)
#  MapDescription1_Lang_enTW :text(65535)
#  MapDescription1_Lang_enUS :text(65535)
#  MapDescription1_Lang_esES :text(65535)
#  MapDescription1_Lang_esMX :text(65535)
#  MapDescription1_Lang_frFR :text(65535)
#  MapDescription1_Lang_itIT :text(65535)
#  MapDescription1_Lang_koKR :text(65535)
#  MapDescription1_Lang_ptBR :text(65535)
#  MapDescription1_Lang_ptPT :text(65535)
#  MapDescription1_Lang_ruRU :text(65535)
#  MapDescription1_Lang_zhCN :text(65535)
#  MapDescription1_Lang_zhTW :text(65535)
#  MapName_Lang_Mask         :integer          default(0), unsigned, not null
#  MapName_Lang_Unk          :string(100)
#  MapName_Lang_deDE         :string(100)
#  MapName_Lang_enCN         :string(100)
#  MapName_Lang_enGB         :string(100)
#  MapName_Lang_enTW         :string(100)
#  MapName_Lang_enUS         :string(100)
#  MapName_Lang_esES         :string(100)
#  MapName_Lang_esMX         :string(100)
#  MapName_Lang_frFR         :string(100)
#  MapName_Lang_itIT         :string(100)
#  MapName_Lang_koKR         :string(100)
#  MapName_Lang_ptBR         :string(100)
#  MapName_Lang_ptPT         :string(100)
#  MapName_Lang_ruRU         :string(100)
#  MapName_Lang_zhCN         :string(100)
#  MapName_Lang_zhTW         :string(100)
#  MaxPlayers                :integer          default(0), not null
#  MinimapIconScale          :float(24)        default(0.0), not null
#  PVP                       :integer          default(0), not null
#  RaidOffset                :integer          default(0), not null
#  TimeOfDayOverride         :integer          default(0), not null
#
module World
  class MapDbc < WorldApplicationRecord
    self.table_name = 'map_dbc'
    self.primary_key = 'ID'
  end
end
