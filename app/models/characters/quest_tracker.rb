# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_tracker
#
#  id                  :integer          default(0), unsigned
#  character_guid      :integer          default(0), unsigned, not null
#  completed_by_gm     :integer          default(0), not null
#  core_hash           :string(120)      default("0"), not null
#  core_revision       :string(120)      default("0"), not null
#  quest_abandon_time  :datetime
#  quest_accept_time   :datetime         not null
#  quest_complete_time :datetime
#
module Characters
  class QuestTracker < CharactersApplicationRecord
    self.table_name = 'quest_tracker'
  end
end
