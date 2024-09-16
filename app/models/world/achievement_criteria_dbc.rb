# frozen_string_literal: true

# == Schema Information
#
# Table name: achievement_criteria_dbc
#
#  Achievement_Id        :integer          default(0), not null
#  Asset_Id              :integer          default(0), not null
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
#  Fail_Asset            :integer          default(0), not null
#  Fail_Event            :integer          default(0), not null
#  Flags                 :integer          default(0), not null
#  ID                    :integer          default(0), not null, primary key
#  Quantity              :integer          default(0), not null
#  Start_Asset           :integer          default(0), not null
#  Start_Event           :integer          default(0), not null
#  Timer_Asset_Id        :integer          default(0), not null
#  Timer_Start_Event     :integer          default(0), not null
#  Timer_Time            :integer          default(0), not null
#  Type                  :integer          default(0), not null
#  Ui_Order              :integer          default(0), not null
#
module World
  class AchievementCriteriaDbc < WorldApplicationRecord
    self.table_name = 'achievement_criteria_dbc'
    self.primary_key = 'ID'
  end
end
