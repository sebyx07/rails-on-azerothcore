# frozen_string_literal: true

# == Schema Information
#
# Table name: mailtemplate_dbc
#
#  Body_Lang_Mask    :integer          default(0), unsigned, not null
#  Body_Lang_Unk     :string(100)
#  Body_Lang_deDE    :string(500)
#  Body_Lang_enCN    :string(500)
#  Body_Lang_enGB    :string(500)
#  Body_Lang_enTW    :string(500)
#  Body_Lang_enUS    :string(500)
#  Body_Lang_esES    :string(500)
#  Body_Lang_esMX    :string(500)
#  Body_Lang_frFR    :string(500)
#  Body_Lang_itIT    :string(500)
#  Body_Lang_koKR    :string(500)
#  Body_Lang_ptBR    :string(500)
#  Body_Lang_ptPT    :string(500)
#  Body_Lang_ruRU    :string(500)
#  Body_Lang_zhCN    :string(500)
#  Body_Lang_zhTW    :string(500)
#  ID                :integer          default(0), not null, primary key
#  Subject_Lang_Mask :integer          default(0), unsigned, not null
#  Subject_Lang_Unk  :string(100)
#  Subject_Lang_deDE :string(100)
#  Subject_Lang_enCN :string(100)
#  Subject_Lang_enGB :string(100)
#  Subject_Lang_enTW :string(100)
#  Subject_Lang_enUS :string(100)
#  Subject_Lang_esES :string(100)
#  Subject_Lang_esMX :string(100)
#  Subject_Lang_frFR :string(100)
#  Subject_Lang_itIT :string(100)
#  Subject_Lang_koKR :string(100)
#  Subject_Lang_ptBR :string(100)
#  Subject_Lang_ptPT :string(100)
#  Subject_Lang_ruRU :string(100)
#  Subject_Lang_zhCN :string(100)
#  Subject_Lang_zhTW :string(100)
#
module World
  class MailtemplateDbc < WorldApplicationRecord
    self.table_name = 'mailtemplate_dbc'
    self.primary_key = 'ID'
  end
end
