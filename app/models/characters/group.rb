# frozen_string_literal: true

# == Schema Information
#
# Table name: groups
#
#  difficulty       :integer          default(0), unsigned, not null
#  groupType        :integer          unsigned, not null
#  guid             :integer          unsigned, not null, primary key
#  icon1            :bigint           unsigned, not null
#  icon2            :bigint           unsigned, not null
#  icon3            :bigint           unsigned, not null
#  icon4            :bigint           unsigned, not null
#  icon5            :bigint           unsigned, not null
#  icon6            :bigint           unsigned, not null
#  icon7            :bigint           unsigned, not null
#  icon8            :bigint           unsigned, not null
#  leaderGuid       :integer          unsigned, not null
#  lootMethod       :integer          unsigned, not null
#  lootThreshold    :integer          unsigned, not null
#  looterGuid       :integer          unsigned, not null
#  masterLooterGuid :integer          unsigned, not null
#  raidDifficulty   :integer          default(0), unsigned, not null
#
# Indexes
#
#  leaderGuid  (leaderGuid)
#
module Characters
  class Group < CharactersApplicationRecord
    self.table_name = 'groups'
    self.primary_key = :guid
  end
end
