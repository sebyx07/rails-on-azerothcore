# frozen_string_literal: true

# == Schema Information
#
# Table name: character_achievement_offline_updates
#
#  arg1(For type 1: achievement ID; for type 2: ACHIEVEMENT_CRITERIA_TYPE)     :integer          unsigned, not null
#  arg2(For type 2: miscValue1 for updating achievement criteria)              :integer          unsigned
#  arg3(For type 2: miscValue2 for updating achievement criteria)              :integer          unsigned
#  guid(Character's GUID)                                                      :bigint           unsigned, not null
#  update_type(Supported types: 1 - COMPLETE_ACHIEVEMENT; 2 - UPDATE_CRITERIA) :integer          unsigned, not null
#
# Indexes
#
#  idx_guid  (guid)
#
module Characters
  class CharacterAchievementOfflineUpdate < CharactersApplicationRecord
    self.table_name = 'character_achievement_offline_updates'
  end
end
