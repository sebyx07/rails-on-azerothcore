# frozen_string_literal: true

# == Schema Information
#
# Table name: skillline_dbc
#
#  AlternateVerb_Lang_Mask :integer          default(0), unsigned, not null
#  AlternateVerb_Lang_Unk  :string(100)
#  AlternateVerb_Lang_deDE :string(100)
#  AlternateVerb_Lang_enCN :string(100)
#  AlternateVerb_Lang_enGB :string(100)
#  AlternateVerb_Lang_enTW :string(100)
#  AlternateVerb_Lang_enUS :string(100)
#  AlternateVerb_Lang_esES :string(100)
#  AlternateVerb_Lang_esMX :string(100)
#  AlternateVerb_Lang_frFR :string(100)
#  AlternateVerb_Lang_itIT :string(100)
#  AlternateVerb_Lang_koKR :string(100)
#  AlternateVerb_Lang_ptBR :string(100)
#  AlternateVerb_Lang_ptPT :string(100)
#  AlternateVerb_Lang_ruRU :string(100)
#  AlternateVerb_Lang_zhCN :string(100)
#  AlternateVerb_Lang_zhTW :string(100)
#  CanLink                 :integer          default(0), not null
#  CategoryID              :integer          default(0), not null
#  Description_Lang_Mask   :integer          default(0), unsigned, not null
#  Description_Lang_Unk    :string(100)
#  Description_Lang_deDE   :string(300)
#  Description_Lang_enCN   :string(300)
#  Description_Lang_enGB   :string(300)
#  Description_Lang_enTW   :string(300)
#  Description_Lang_enUS   :string(300)
#  Description_Lang_esES   :string(300)
#  Description_Lang_esMX   :string(300)
#  Description_Lang_frFR   :string(300)
#  Description_Lang_itIT   :string(300)
#  Description_Lang_koKR   :string(300)
#  Description_Lang_ptBR   :string(300)
#  Description_Lang_ptPT   :string(300)
#  Description_Lang_ruRU   :string(300)
#  Description_Lang_zhCN   :string(300)
#  Description_Lang_zhTW   :string(300)
#  DisplayName_Lang_Mask   :integer          default(0), unsigned, not null
#  DisplayName_Lang_Unk    :string(100)
#  DisplayName_Lang_deDE   :string(100)
#  DisplayName_Lang_enCN   :string(100)
#  DisplayName_Lang_enGB   :string(100)
#  DisplayName_Lang_enTW   :string(100)
#  DisplayName_Lang_enUS   :string(100)
#  DisplayName_Lang_esES   :string(100)
#  DisplayName_Lang_esMX   :string(100)
#  DisplayName_Lang_frFR   :string(100)
#  DisplayName_Lang_itIT   :string(100)
#  DisplayName_Lang_koKR   :string(100)
#  DisplayName_Lang_ptBR   :string(100)
#  DisplayName_Lang_ptPT   :string(100)
#  DisplayName_Lang_ruRU   :string(100)
#  DisplayName_Lang_zhCN   :string(100)
#  DisplayName_Lang_zhTW   :string(100)
#  ID                      :integer          default(0), not null, primary key
#  SkillCostsID            :integer          default(0), not null
#  SpellIconID             :integer          default(0), not null
#
module World
  class SkilllineDbc < WorldApplicationRecord
    self.table_name = 'skillline_dbc'
    self.primary_key = 'ID'
  end
end
