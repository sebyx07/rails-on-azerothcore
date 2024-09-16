# frozen_string_literal: true

# == Schema Information
#
# Table name: chrclasses_dbc
#
#  CinematicSequenceID   :integer          default(0), not null
#  DisplayPower          :integer          default(0), not null
#  Field01               :integer          default(0), not null
#  Filename              :string(100)
#  Flags                 :integer          default(0), not null
#  ID                    :integer          default(0), not null, primary key
#  Name_Female_Lang_Mask :integer          default(0), unsigned, not null
#  Name_Female_Lang_Unk  :string(100)
#  Name_Female_Lang_deDE :string(100)
#  Name_Female_Lang_enCN :string(100)
#  Name_Female_Lang_enGB :string(100)
#  Name_Female_Lang_enTW :string(100)
#  Name_Female_Lang_enUS :string(100)
#  Name_Female_Lang_esES :string(100)
#  Name_Female_Lang_esMX :string(100)
#  Name_Female_Lang_frFR :string(100)
#  Name_Female_Lang_itIT :string(100)
#  Name_Female_Lang_koKR :string(100)
#  Name_Female_Lang_ptBR :string(100)
#  Name_Female_Lang_ptPT :string(100)
#  Name_Female_Lang_ruRU :string(100)
#  Name_Female_Lang_zhCN :string(100)
#  Name_Female_Lang_zhTW :string(100)
#  Name_Lang_Mask        :integer          default(0), unsigned, not null
#  Name_Lang_Unk         :string(100)
#  Name_Lang_deDE        :string(100)
#  Name_Lang_enCN        :string(100)
#  Name_Lang_enGB        :string(100)
#  Name_Lang_enTW        :string(100)
#  Name_Lang_enUS        :string(100)
#  Name_Lang_esES        :string(100)
#  Name_Lang_esMX        :string(100)
#  Name_Lang_frFR        :string(100)
#  Name_Lang_itIT        :string(100)
#  Name_Lang_koKR        :string(100)
#  Name_Lang_ptBR        :string(100)
#  Name_Lang_ptPT        :string(100)
#  Name_Lang_ruRU        :string(100)
#  Name_Lang_zhCN        :string(100)
#  Name_Lang_zhTW        :string(100)
#  Name_Male_Lang_Mask   :integer          default(0), unsigned, not null
#  Name_Male_Lang_Unk    :string(100)
#  Name_Male_Lang_deDE   :string(100)
#  Name_Male_Lang_enCN   :string(100)
#  Name_Male_Lang_enGB   :string(100)
#  Name_Male_Lang_enTW   :string(100)
#  Name_Male_Lang_enUS   :string(100)
#  Name_Male_Lang_esES   :string(100)
#  Name_Male_Lang_esMX   :string(100)
#  Name_Male_Lang_frFR   :string(100)
#  Name_Male_Lang_itIT   :string(100)
#  Name_Male_Lang_koKR   :string(100)
#  Name_Male_Lang_ptBR   :string(100)
#  Name_Male_Lang_ptPT   :string(100)
#  Name_Male_Lang_ruRU   :string(100)
#  Name_Male_Lang_zhCN   :string(100)
#  Name_Male_Lang_zhTW   :string(100)
#  PetNameToken          :integer          default(0), not null
#  Required_Expansion    :integer          default(0), not null
#  SpellClassSet         :integer          default(0), not null
#
module World
  class ChrclassesDbc < WorldApplicationRecord
    self.table_name = 'chrclasses_dbc'
    self.primary_key = 'ID'
  end
end
