# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_request_items_locale
#
#  CompletionText :text(65535)
#  ID             :integer          default(0), unsigned, not null, primary key
#  VerifiedBuild  :integer
#  locale         :string(4)        not null, primary key
#
module World
  class QuestRequestItemsLocale < WorldApplicationRecord
    self.table_name = 'quest_request_items_locale'
    self.primary_key = %i[ID locale]
  end
end
