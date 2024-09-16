# frozen_string_literal: true

# == Schema Information
#
# Table name: character_achievement_progress
#
#  counter  :integer          unsigned, not null
#  criteria :integer          unsigned, not null, primary key
#  date     :integer          default(0), unsigned, not null
#  guid     :integer          unsigned, not null, primary key
#
module Characters
  class CharacterAchievementProgress < CharactersApplicationRecord
    self.table_name = 'character_achievement_progress'
    self.primary_key = %i[guid criteria]
  end
end
