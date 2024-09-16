# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_template
#
#  AllowableRaces                                             :integer          default(0), unsigned, not null
#  AreaDescription                                            :text(65535)
#  Flags                                                      :integer          default(0), unsigned, not null
#  ID                                                         :integer          default(0), unsigned, not null, primary key
#  ItemDrop1                                                  :integer          default(0), unsigned, not null
#  ItemDrop2                                                  :integer          default(0), unsigned, not null
#  ItemDrop3                                                  :integer          default(0), unsigned, not null
#  ItemDrop4                                                  :integer          default(0), unsigned, not null
#  ItemDropQuantity1                                          :integer          default(0), unsigned, not null
#  ItemDropQuantity2                                          :integer          default(0), unsigned, not null
#  ItemDropQuantity3                                          :integer          default(0), unsigned, not null
#  ItemDropQuantity4                                          :integer          default(0), unsigned, not null
#  LogDescription                                             :text(65535)
#  LogTitle                                                   :text(65535)
#  MinLevel                                                   :integer          default(0), unsigned, not null
#  ObjectiveText1                                             :text(65535)
#  ObjectiveText2                                             :text(65535)
#  ObjectiveText3                                             :text(65535)
#  ObjectiveText4                                             :text(65535)
#  POIContinent                                               :integer          default(0), unsigned, not null
#  POIPriority                                                :integer          default(0), unsigned, not null
#  POIx                                                       :float(24)        default(0.0), not null
#  POIy                                                       :float(24)        default(0.0), not null
#  QuestCompletionLog                                         :text(65535)
#  QuestDescription                                           :text(65535)
#  QuestInfoID                                                :integer          default(0), unsigned, not null
#  QuestLevel                                                 :integer          default(1), not null
#  QuestSortID                                                :integer          default(0), not null
#  QuestType                                                  :integer          default(2), unsigned, not null
#  RequiredFactionId1                                         :integer          default(0), unsigned, not null
#  RequiredFactionId2                                         :integer          default(0), unsigned, not null
#  RequiredFactionValue1                                      :integer          default(0), not null
#  RequiredFactionValue2                                      :integer          default(0), not null
#  RequiredItemCount1                                         :integer          default(0), unsigned, not null
#  RequiredItemCount2                                         :integer          default(0), unsigned, not null
#  RequiredItemCount3                                         :integer          default(0), unsigned, not null
#  RequiredItemCount4                                         :integer          default(0), unsigned, not null
#  RequiredItemCount5                                         :integer          default(0), unsigned, not null
#  RequiredItemCount6                                         :integer          default(0), unsigned, not null
#  RequiredItemId1                                            :integer          default(0), unsigned, not null
#  RequiredItemId2                                            :integer          default(0), unsigned, not null
#  RequiredItemId3                                            :integer          default(0), unsigned, not null
#  RequiredItemId4                                            :integer          default(0), unsigned, not null
#  RequiredItemId5                                            :integer          default(0), unsigned, not null
#  RequiredItemId6                                            :integer          default(0), unsigned, not null
#  RequiredNpcOrGo1                                           :integer          default(0), not null
#  RequiredNpcOrGo2                                           :integer          default(0), not null
#  RequiredNpcOrGo3                                           :integer          default(0), not null
#  RequiredNpcOrGo4                                           :integer          default(0), not null
#  RequiredNpcOrGoCount1                                      :integer          default(0), unsigned, not null
#  RequiredNpcOrGoCount2                                      :integer          default(0), unsigned, not null
#  RequiredNpcOrGoCount3                                      :integer          default(0), unsigned, not null
#  RequiredNpcOrGoCount4                                      :integer          default(0), unsigned, not null
#  RequiredPlayerKills                                        :integer          default(0), unsigned, not null
#  RewardAmount1                                              :integer          default(0), unsigned, not null
#  RewardAmount2                                              :integer          default(0), unsigned, not null
#  RewardAmount3                                              :integer          default(0), unsigned, not null
#  RewardAmount4                                              :integer          default(0), unsigned, not null
#  RewardArenaPoints                                          :integer          default(0), unsigned, not null
#  RewardChoiceItemID1                                        :integer          default(0), unsigned, not null
#  RewardChoiceItemID2                                        :integer          default(0), unsigned, not null
#  RewardChoiceItemID3                                        :integer          default(0), unsigned, not null
#  RewardChoiceItemID4                                        :integer          default(0), unsigned, not null
#  RewardChoiceItemID5                                        :integer          default(0), unsigned, not null
#  RewardChoiceItemID6                                        :integer          default(0), unsigned, not null
#  RewardChoiceItemQuantity1                                  :integer          default(0), unsigned, not null
#  RewardChoiceItemQuantity2                                  :integer          default(0), unsigned, not null
#  RewardChoiceItemQuantity3                                  :integer          default(0), unsigned, not null
#  RewardChoiceItemQuantity4                                  :integer          default(0), unsigned, not null
#  RewardChoiceItemQuantity5                                  :integer          default(0), unsigned, not null
#  RewardChoiceItemQuantity6                                  :integer          default(0), unsigned, not null
#  RewardDisplaySpell                                         :integer          default(0), unsigned, not null
#  RewardFactionID1(faction id from Faction.dbc in this case) :integer          default(0), unsigned, not null
#  RewardFactionID2(faction id from Faction.dbc in this case) :integer          default(0), unsigned, not null
#  RewardFactionID3(faction id from Faction.dbc in this case) :integer          default(0), unsigned, not null
#  RewardFactionID4(faction id from Faction.dbc in this case) :integer          default(0), unsigned, not null
#  RewardFactionID5(faction id from Faction.dbc in this case) :integer          default(0), unsigned, not null
#  RewardFactionOverride1                                     :integer          default(0), not null
#  RewardFactionOverride2                                     :integer          default(0), not null
#  RewardFactionOverride3                                     :integer          default(0), not null
#  RewardFactionOverride4                                     :integer          default(0), not null
#  RewardFactionOverride5                                     :integer          default(0), not null
#  RewardFactionValue1                                        :integer          default(0), not null
#  RewardFactionValue2                                        :integer          default(0), not null
#  RewardFactionValue3                                        :integer          default(0), not null
#  RewardFactionValue4                                        :integer          default(0), not null
#  RewardFactionValue5                                        :integer          default(0), not null
#  RewardHonor                                                :integer          default(0), not null
#  RewardItem1                                                :integer          default(0), unsigned, not null
#  RewardItem2                                                :integer          default(0), unsigned, not null
#  RewardItem3                                                :integer          default(0), unsigned, not null
#  RewardItem4                                                :integer          default(0), unsigned, not null
#  RewardKillHonor                                            :float(24)        default(0.0), not null
#  RewardMoney                                                :integer          default(0), not null
#  RewardMoneyDifficulty                                      :integer          default(0), unsigned, not null
#  RewardNextQuest                                            :integer          default(0), unsigned, not null
#  RewardSpell                                                :integer          default(0), not null
#  RewardTalents                                              :integer          default(0), unsigned, not null
#  RewardTitle                                                :integer          default(0), unsigned, not null
#  RewardXPDifficulty                                         :integer          default(0), unsigned, not null
#  StartItem                                                  :integer          default(0), unsigned, not null
#  SuggestedGroupNum                                          :integer          default(0), unsigned, not null
#  TimeAllowed                                                :integer          default(0), unsigned, not null
#  Unknown0                                                   :integer          default(0), unsigned, not null
#  VerifiedBuild                                              :integer
#
module World
  class QuestTemplate < WorldApplicationRecord
    self.table_name = 'quest_template'
    self.primary_key = 'ID'
  end
end
