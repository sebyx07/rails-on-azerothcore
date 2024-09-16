# frozen_string_literal: true

# == Schema Information
#
# Table name: spellrange_dbc
#
#  DisplayNameShort_Lang_Mask :integer          default(0), unsigned, not null
#  DisplayNameShort_Lang_Unk  :text(65535)
#  DisplayNameShort_Lang_deDE :text(65535)
#  DisplayNameShort_Lang_enCN :text(65535)
#  DisplayNameShort_Lang_enGB :text(65535)
#  DisplayNameShort_Lang_enTW :text(65535)
#  DisplayNameShort_Lang_enUS :text(65535)
#  DisplayNameShort_Lang_esES :text(65535)
#  DisplayNameShort_Lang_esMX :text(65535)
#  DisplayNameShort_Lang_frFR :text(65535)
#  DisplayNameShort_Lang_itIT :text(65535)
#  DisplayNameShort_Lang_koKR :text(65535)
#  DisplayNameShort_Lang_ptBR :text(65535)
#  DisplayNameShort_Lang_ptPT :text(65535)
#  DisplayNameShort_Lang_ruRU :text(65535)
#  DisplayNameShort_Lang_zhCN :text(65535)
#  DisplayNameShort_Lang_zhTW :text(65535)
#  DisplayName_Lang_Mask      :integer          default(0), unsigned, not null
#  DisplayName_Lang_Unk       :text(65535)
#  DisplayName_Lang_deDE      :text(65535)
#  DisplayName_Lang_enCN      :text(65535)
#  DisplayName_Lang_enGB      :text(65535)
#  DisplayName_Lang_enTW      :text(65535)
#  DisplayName_Lang_enUS      :text(65535)
#  DisplayName_Lang_esES      :text(65535)
#  DisplayName_Lang_esMX      :text(65535)
#  DisplayName_Lang_frFR      :text(65535)
#  DisplayName_Lang_itIT      :text(65535)
#  DisplayName_Lang_koKR      :text(65535)
#  DisplayName_Lang_ptBR      :text(65535)
#  DisplayName_Lang_ptPT      :text(65535)
#  DisplayName_Lang_ruRU      :text(65535)
#  DisplayName_Lang_zhCN      :text(65535)
#  DisplayName_Lang_zhTW      :text(65535)
#  Flags                      :integer          default(0), not null
#  ID                         :integer          default(0), not null, primary key
#  RangeMax_1                 :float(24)        default(0.0), not null
#  RangeMax_2                 :float(24)        default(0.0), not null
#  RangeMin_1                 :float(24)        default(0.0), not null
#  RangeMin_2                 :float(24)        default(0.0), not null
#
module World
  class SpellrangeDbc < WorldApplicationRecord
    self.table_name = 'spellrange_dbc'
    self.primary_key = 'ID'
  end
end
