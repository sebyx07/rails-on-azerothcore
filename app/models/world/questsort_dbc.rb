# frozen_string_literal: true

# == Schema Information
#
# Table name: questsort_dbc
#
#  ID                 :integer          default(0), not null, primary key
#  SortName_Lang_Mask :integer          default(0), unsigned, not null
#  SortName_Lang_Unk  :string(100)
#  SortName_Lang_deDE :string(100)
#  SortName_Lang_enCN :string(100)
#  SortName_Lang_enGB :string(100)
#  SortName_Lang_enTW :string(100)
#  SortName_Lang_enUS :string(100)
#  SortName_Lang_esES :string(100)
#  SortName_Lang_esMX :string(100)
#  SortName_Lang_frFR :string(100)
#  SortName_Lang_itIT :string(100)
#  SortName_Lang_koKR :string(100)
#  SortName_Lang_ptBR :string(100)
#  SortName_Lang_ptPT :string(100)
#  SortName_Lang_ruRU :string(100)
#  SortName_Lang_zhCN :string(100)
#  SortName_Lang_zhTW :string(100)
#
module World
  class QuestsortDbc < WorldApplicationRecord
    self.table_name = 'questsort_dbc'
    self.primary_key = 'ID'
  end
end
