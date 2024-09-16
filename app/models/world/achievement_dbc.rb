# frozen_string_literal: true

# == Schema Information
#
# Table name: achievement_dbc
#
#  Category              :integer          default(0), not null
#  Description_Lang_Mask :integer          default(0), unsigned, not null
#  Description_Lang_Unk  :string(100)
#  Description_Lang_deDE :string(200)
#  Description_Lang_enCN :string(200)
#  Description_Lang_enGB :string(200)
#  Description_Lang_enTW :string(200)
#  Description_Lang_enUS :string(200)
#  Description_Lang_esES :string(200)
#  Description_Lang_esMX :string(200)
#  Description_Lang_frFR :string(200)
#  Description_Lang_itIT :string(200)
#  Description_Lang_koKR :string(200)
#  Description_Lang_ptBR :string(200)
#  Description_Lang_ptPT :string(200)
#  Description_Lang_ruRU :string(200)
#  Description_Lang_zhCN :string(200)
#  Description_Lang_zhTW :string(200)
#  Faction               :integer          default(0), not null
#  Flags                 :integer          default(0), not null
#  ID                    :integer          default(0), not null, primary key
#  IconID                :integer          default(0), not null
#  Instance_Id           :integer          default(0), not null
#  Minimum_Criteria      :integer          default(0), not null
#  Points                :integer          default(0), not null
#  Reward_Lang_Mask      :integer          default(0), unsigned, not null
#  Reward_Lang_Unk       :string(100)
#  Reward_Lang_deDE      :string(100)
#  Reward_Lang_enCN      :string(100)
#  Reward_Lang_enGB      :string(100)
#  Reward_Lang_enTW      :string(100)
#  Reward_Lang_enUS      :string(100)
#  Reward_Lang_esES      :string(100)
#  Reward_Lang_esMX      :string(100)
#  Reward_Lang_frFR      :string(100)
#  Reward_Lang_itIT      :string(100)
#  Reward_Lang_koKR      :string(100)
#  Reward_Lang_ptBR      :string(100)
#  Reward_Lang_ptPT      :string(100)
#  Reward_Lang_ruRU      :string(100)
#  Reward_Lang_zhCN      :string(100)
#  Reward_Lang_zhTW      :string(100)
#  Shares_Criteria       :integer          default(0), not null
#  Supercedes            :integer          default(0), not null
#  Title_Lang_Mask       :integer          default(0), unsigned, not null
#  Title_Lang_Unk        :string(100)
#  Title_Lang_deDE       :string(100)
#  Title_Lang_enCN       :string(100)
#  Title_Lang_enGB       :string(100)
#  Title_Lang_enTW       :string(100)
#  Title_Lang_enUS       :string(100)
#  Title_Lang_esES       :string(100)
#  Title_Lang_esMX       :string(100)
#  Title_Lang_frFR       :string(100)
#  Title_Lang_itIT       :string(100)
#  Title_Lang_koKR       :string(100)
#  Title_Lang_ptBR       :string(100)
#  Title_Lang_ptPT       :string(100)
#  Title_Lang_ruRU       :string(100)
#  Title_Lang_zhCN       :string(100)
#  Title_Lang_zhTW       :string(100)
#  Ui_Order              :integer          default(0), not null
#
module World
  class AchievementDbc < WorldApplicationRecord
    self.table_name = 'achievement_dbc'
    self.primary_key = 'ID'
  end
end
