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

    alias_attribute :id, :ID
    alias_attribute :allowable_races, :AllowableRaces
    alias_attribute :area_description, :AreaDescription
    alias_attribute :flags, :Flags
    alias_attribute :item_drop_1, :ItemDrop1
    alias_attribute :item_drop_2, :ItemDrop2
    alias_attribute :item_drop_3, :ItemDrop3
    alias_attribute :item_drop_4, :ItemDrop4
    alias_attribute :item_drop_quantity_1, :ItemDropQuantity1
    alias_attribute :item_drop_quantity_2, :ItemDropQuantity2
    alias_attribute :item_drop_quantity_3, :ItemDropQuantity3
    alias_attribute :item_drop_quantity_4, :ItemDropQuantity4
    alias_attribute :log_description, :LogDescription
    alias_attribute :log_title, :LogTitle
    alias_attribute :min_level, :MinLevel
    alias_attribute :objective_text_1, :ObjectiveText1
    alias_attribute :objective_text_2, :ObjectiveText2
    alias_attribute :objective_text_3, :ObjectiveText3
    alias_attribute :objective_text_4, :ObjectiveText4
    alias_attribute :poi_continent, :POIContinent
    alias_attribute :poi_priority, :POIPriority
    alias_attribute :poi_x, :POIx
    alias_attribute :poi_y, :POIy
    alias_attribute :quest_completion_log, :QuestCompletionLog
    alias_attribute :quest_description, :QuestDescription
    alias_attribute :quest_info_id, :QuestInfoID
    alias_attribute :quest_level, :QuestLevel
    alias_attribute :quest_sort_id, :QuestSortID
    alias_attribute :quest_type, :QuestType
    alias_attribute :required_faction_id_1, :RequiredFactionId1
    alias_attribute :required_faction_id_2, :RequiredFactionId2
    alias_attribute :required_faction_value_1, :RequiredFactionValue1
    alias_attribute :required_faction_value_2, :RequiredFactionValue2
    alias_attribute :required_item_count_1, :RequiredItemCount1
    alias_attribute :required_item_count_2, :RequiredItemCount2
    alias_attribute :required_item_count_3, :RequiredItemCount3
    alias_attribute :required_item_count_4, :RequiredItemCount4
    alias_attribute :required_item_count_5, :RequiredItemCount5
    alias_attribute :required_item_count_6, :RequiredItemCount6
    alias_attribute :required_item_id_1, :RequiredItemId1
    alias_attribute :required_item_id_2, :RequiredItemId2
    alias_attribute :required_item_id_3, :RequiredItemId3
    alias_attribute :required_item_id_4, :RequiredItemId4
    alias_attribute :required_item_id_5, :RequiredItemId5
    alias_attribute :required_item_id_6, :RequiredItemId6
    alias_attribute :required_npc_or_go_1, :RequiredNpcOrGo1
    alias_attribute :required_npc_or_go_2, :RequiredNpcOrGo2
    alias_attribute :required_npc_or_go_3, :RequiredNpcOrGo3
    alias_attribute :required_npc_or_go_4, :RequiredNpcOrGo4
    alias_attribute :required_npc_or_go_count_1, :RequiredNpcOrGoCount1
    alias_attribute :required_npc_or_go_count_2, :RequiredNpcOrGoCount2
    alias_attribute :required_npc_or_go_count_3, :RequiredNpcOrGoCount3
    alias_attribute :required_npc_or_go_count_4, :RequiredNpcOrGoCount4
    alias_attribute :required_player_kills, :RequiredPlayerKills
    alias_attribute :reward_amount_1, :RewardAmount1
    alias_attribute :reward_amount_2, :RewardAmount2
    alias_attribute :reward_amount_3, :RewardAmount3
    alias_attribute :reward_amount_4, :RewardAmount4
    alias_attribute :reward_arena_points, :RewardArenaPoints
    alias_attribute :reward_choice_item_id_1, :RewardChoiceItemID1
    alias_attribute :reward_choice_item_id_2, :RewardChoiceItemID2
    alias_attribute :reward_choice_item_id_3, :RewardChoiceItemID3
    alias_attribute :reward_choice_item_id_4, :RewardChoiceItemID4
    alias_attribute :reward_choice_item_id_5, :RewardChoiceItemID5
    alias_attribute :reward_choice_item_id_6, :RewardChoiceItemID6
    alias_attribute :reward_choice_item_quantity_1, :RewardChoiceItemQuantity1
    alias_attribute :reward_choice_item_quantity_2, :RewardChoiceItemQuantity2
    alias_attribute :reward_choice_item_quantity_3, :RewardChoiceItemQuantity3
    alias_attribute :reward_choice_item_quantity_4, :RewardChoiceItemQuantity4
    alias_attribute :reward_choice_item_quantity_5, :RewardChoiceItemQuantity5
    alias_attribute :reward_choice_item_quantity_6, :RewardChoiceItemQuantity6
    alias_attribute :reward_display_spell, :RewardDisplaySpell
    alias_attribute :reward_faction_id_1, :RewardFactionID1
    alias_attribute :reward_faction_id_2, :RewardFactionID2
    alias_attribute :reward_faction_id_3, :RewardFactionID3
    alias_attribute :reward_faction_id_4, :RewardFactionID4
    alias_attribute :reward_faction_id_5, :RewardFactionID5
    alias_attribute :reward_faction_override_1, :RewardFactionOverride1
    alias_attribute :reward_faction_override_2, :RewardFactionOverride2
    alias_attribute :reward_faction_override_3, :RewardFactionOverride3
    alias_attribute :reward_faction_override_4, :RewardFactionOverride4
    alias_attribute :reward_faction_override_5, :RewardFactionOverride5
    alias_attribute :reward_faction_value_1, :RewardFactionValue1
    alias_attribute :reward_faction_value_2, :RewardFactionValue2
    alias_attribute :reward_faction_value_3, :RewardFactionValue3
    alias_attribute :reward_faction_value_4, :RewardFactionValue4
    alias_attribute :reward_faction_value_5, :RewardFactionValue5
    alias_attribute :reward_honor, :RewardHonor
    alias_attribute :reward_item_1, :RewardItem1
    alias_attribute :reward_item_2, :RewardItem2
    alias_attribute :reward_item_3, :RewardItem3
    alias_attribute :reward_item_4, :RewardItem4
    alias_attribute :reward_kill_honor, :RewardKillHonor
    alias_attribute :reward_money, :RewardMoney
    alias_attribute :reward_money_difficulty, :RewardMoneyDifficulty
    alias_attribute :reward_next_quest, :RewardNextQuest
    alias_attribute :reward_spell, :RewardSpell
    alias_attribute :reward_talents, :RewardTalents
    alias_attribute :reward_title, :RewardTitle
    alias_attribute :reward_xp_difficulty, :RewardXPDifficulty
    alias_attribute :start_item, :StartItem
    alias_attribute :suggested_group_num, :SuggestedGroupNum
    alias_attribute :time_allowed, :TimeAllowed
    alias_attribute :unknown_0, :Unknown0
    alias_attribute :verified_build, :VerifiedBuild

    validates :ID, presence: true, uniqueness: true
    validates :QuestLevel, presence: true, numericality: { greater_than_or_equal_to: 1 }
    validates :MinLevel, :QuestType, :QuestSortID, :QuestInfoID, :SuggestedGroupNum,
              :TimeAllowed, :AllowableRaces, :Flags, :SpecialFlags,
              numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :RewardHonor, :RewardKillHonor, numericality: true
    validates :RewardMoney, :RewardBonusMoney, numericality: { only_integer: true }
    validates :RewardDisplaySpell, :RewardSpell, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :POIx, :POIy, numericality: true
  end
end
