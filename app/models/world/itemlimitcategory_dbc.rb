# frozen_string_literal: true

# == Schema Information
#
# Table name: itemlimitcategory_dbc
#
#  Flags          :integer          default(0), not null
#  ID             :integer          default(0), not null, primary key
#  Name_Lang_Mask :integer          default(0), unsigned, not null
#  Name_Lang_Unk  :string(100)
#  Name_Lang_deDE :string(100)
#  Name_Lang_enCN :string(100)
#  Name_Lang_enGB :string(100)
#  Name_Lang_enTW :string(100)
#  Name_Lang_enUS :string(100)
#  Name_Lang_esES :string(100)
#  Name_Lang_esMX :string(100)
#  Name_Lang_frFR :string(100)
#  Name_Lang_itIT :string(100)
#  Name_Lang_koKR :string(100)
#  Name_Lang_ptBR :string(100)
#  Name_Lang_ptPT :string(100)
#  Name_Lang_ruRU :string(100)
#  Name_Lang_zhCN :string(100)
#  Name_Lang_zhTW :string(100)
#  Quantity       :integer          default(0), not null
#
module World
  class ItemlimitcategoryDbc < WorldApplicationRecord
    self.table_name = 'itemlimitcategory_dbc'
    self.primary_key = :ID
  end
end
