# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_poi_points
#
#  Idx1          :integer          default(0), unsigned, not null, primary key
#  Idx2          :integer          default(0), unsigned, not null, primary key
#  QuestID       :integer          default(0), unsigned, not null, primary key
#  VerifiedBuild :integer
#  X             :integer          default(0), not null
#  Y             :integer          default(0), not null
#
# Indexes
#
#  questId_id  (QuestID,Idx1)
#
module World
  class QuestPoiPoint < WorldApplicationRecord
    self.table_name = 'quest_poi_points'
    self.primary_key = %w[QuestID Idx1 Idx2]
  end
end
