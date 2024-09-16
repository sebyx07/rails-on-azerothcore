# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_poi
#
#  id             :integer          default(0), unsigned, not null
#  Flags          :integer          default(0), unsigned, not null
#  Floor          :integer          default(0), unsigned, not null
#  MapID          :integer          default(0), unsigned, not null
#  ObjectiveIndex :integer          default(0), not null
#  Priority       :integer          default(0), unsigned, not null
#  QuestID        :integer          default(0), unsigned, not null, primary key
#  VerifiedBuild  :integer
#  WorldMapAreaId :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx  (QuestID,id)
#
module World
  class QuestPoi < WorldApplicationRecord
    self.table_name = 'quest_poi'
    self.primary_key = 'QuestID'
  end
end
