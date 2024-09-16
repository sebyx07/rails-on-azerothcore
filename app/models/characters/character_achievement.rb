# frozen_string_literal: true

# == Schema Information
#
# Table name: character_achievement
#
#  achievement :integer          unsigned, not null, primary key
#  date        :integer          default(0), unsigned, not null
#  guid        :integer          unsigned, not null, primary key
#
module Characters
  class CharacterAchievement < CharactersApplicationRecord
    self.table_name = 'character_achievement'
    self.primary_key = %i[guid achievement]
  end
end
