# frozen_string_literal: true

# == Schema Information
#
# Table name: faction_dbc
#
#  Description_Lang_Mask :integer          default(0), unsigned, not null
#  Description_Lang_Unk  :string(100)
#  Description_Lang_deDE :string(300)
#  Description_Lang_enCN :string(300)
#  Description_Lang_enGB :string(300)
#  Description_Lang_enTW :string(300)
#  Description_Lang_enUS :string(300)
#  Description_Lang_esES :string(300)
#  Description_Lang_esMX :string(300)
#  Description_Lang_frFR :string(300)
#  Description_Lang_itIT :string(300)
#  Description_Lang_koKR :string(300)
#  Description_Lang_ptBR :string(300)
#  Description_Lang_ptPT :string(300)
#  Description_Lang_ruRU :string(300)
#  Description_Lang_zhCN :string(300)
#  Description_Lang_zhTW :string(300)
#  ID                    :integer          default(0), not null, primary key
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
#  ParentFactionCap_1    :integer          default(0), not null
#  ParentFactionCap_2    :integer          default(0), not null
#  ParentFactionID       :integer          default(0), not null
#  ParentFactionMod_1    :float(24)        default(0.0), not null
#  ParentFactionMod_2    :float(24)        default(0.0), not null
#  ReputationBase_1      :integer          default(0), not null
#  ReputationBase_2      :integer          default(0), not null
#  ReputationBase_3      :integer          default(0), not null
#  ReputationBase_4      :integer          default(0), not null
#  ReputationClassMask_1 :integer          default(0), not null
#  ReputationClassMask_2 :integer          default(0), not null
#  ReputationClassMask_3 :integer          default(0), not null
#  ReputationClassMask_4 :integer          default(0), not null
#  ReputationFlags_1     :integer          default(0), not null
#  ReputationFlags_2     :integer          default(0), not null
#  ReputationFlags_3     :integer          default(0), not null
#  ReputationFlags_4     :integer          default(0), not null
#  ReputationIndex       :integer          default(0), not null
#  ReputationRaceMask_1  :integer          default(0), not null
#  ReputationRaceMask_2  :integer          default(0), not null
#  ReputationRaceMask_3  :integer          default(0), not null
#  ReputationRaceMask_4  :integer          default(0), not null
#
module World
  class FactionDbc < WorldApplicationRecord
    self.table_name = 'faction_dbc'
    self.primary_key = 'ID'
  end
end
