# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_request_items
#
#  CompletionText    :text(65535)
#  EmoteOnComplete   :integer          default(0), unsigned, not null
#  EmoteOnIncomplete :integer          default(0), unsigned, not null
#  ID                :integer          default(0), unsigned, not null, primary key
#  VerifiedBuild     :integer
#
module World
  class QuestRequestItem < WorldApplicationRecord
    self.table_name = 'quest_request_items'
    self.primary_key = 'ID'
  end
end
