# frozen_string_literal: true

module AzerothCore
  class Quest
    def record
      World::QuestTemplate.find_by!(ID: quest_id)
    end
  end
end
