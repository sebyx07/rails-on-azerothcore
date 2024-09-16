# frozen_string_literal: true

# == Schema Information
#
# Table name: barbershopstyle_dbc
#
#  Cost_Modifier         :float(24)        default(0.0), not null
#  Data                  :integer          default(0), not null
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
#  DisplayName_Lang_Mask :integer          default(0), unsigned, not null
#  DisplayName_Lang_Unk  :string(100)
#  DisplayName_Lang_deDE :string(100)
#  DisplayName_Lang_enCN :string(100)
#  DisplayName_Lang_enGB :string(100)
#  DisplayName_Lang_enTW :string(100)
#  DisplayName_Lang_enUS :string(100)
#  DisplayName_Lang_esES :string(100)
#  DisplayName_Lang_esMX :string(100)
#  DisplayName_Lang_frFR :string(100)
#  DisplayName_Lang_itIT :string(100)
#  DisplayName_Lang_koKR :string(100)
#  DisplayName_Lang_ptBR :string(100)
#  DisplayName_Lang_ptPT :string(100)
#  DisplayName_Lang_ruRU :string(100)
#  DisplayName_Lang_zhCN :string(100)
#  DisplayName_Lang_zhTW :string(100)
#  ID                    :integer          default(0), not null, primary key
#  Race                  :integer          default(0), not null
#  Sex                   :integer          default(0), not null
#  Type                  :integer          default(0), not null
#
module World
  class BarbershopstyleDbc < WorldApplicationRecord
    self.table_name = 'barbershopstyle_dbc'
    self.primary_key = 'ID'
  end
end
