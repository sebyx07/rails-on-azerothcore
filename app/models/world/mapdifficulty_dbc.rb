# frozen_string_literal: true

# == Schema Information
#
# Table name: mapdifficulty_dbc
#
#  Difficulty        :integer          default(0), not null
#  Difficultystring  :string(100)
#  ID                :integer          default(0), not null, primary key
#  MapID             :integer          default(0), not null
#  MaxPlayers        :integer          default(0), not null
#  Message_Lang_Mask :integer          default(0), unsigned, not null
#  Message_Lang_Unk  :string(100)
#  Message_Lang_deDE :string(200)
#  Message_Lang_enCN :string(200)
#  Message_Lang_enGB :string(200)
#  Message_Lang_enTW :string(200)
#  Message_Lang_enUS :string(200)
#  Message_Lang_esES :string(200)
#  Message_Lang_esMX :string(200)
#  Message_Lang_frFR :string(200)
#  Message_Lang_itIT :string(200)
#  Message_Lang_koKR :string(200)
#  Message_Lang_ptBR :string(200)
#  Message_Lang_ptPT :string(200)
#  Message_Lang_ruRU :string(200)
#  Message_Lang_zhCN :string(200)
#  Message_Lang_zhTW :string(200)
#  RaidDuration      :integer          default(0), not null
#
module World
  class MapdifficultyDbc < WorldApplicationRecord
    self.table_name = 'mapdifficulty_dbc'
    self.primary_key = 'ID'
  end
end
