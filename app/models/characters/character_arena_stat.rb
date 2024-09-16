# frozen_string_literal: true

# == Schema Information
#
# Table name: character_arena_stats
#
#  guid             :integer          default(0), unsigned, not null, primary key
#  matchMakerRating :integer          default(0), unsigned, not null
#  maxMMR           :integer          not null
#  slot             :integer          default(0), unsigned, not null, primary key
#
module Characters
  class CharacterArenaStat < CharactersApplicationRecord
    self.table_name = 'character_arena_stats'
    self.primary_key = %i[guid slot]
  end
end
