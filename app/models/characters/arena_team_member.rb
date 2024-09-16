# frozen_string_literal: true

# == Schema Information
#
# Table name: arena_team_member
#
#  arenaTeamId    :integer          default(0), unsigned, not null, primary key
#  guid           :integer          default(0), unsigned, not null, primary key
#  personalRating :integer          default(0), not null
#  seasonGames    :integer          default(0), unsigned, not null
#  seasonWins     :integer          default(0), unsigned, not null
#  weekGames      :integer          default(0), unsigned, not null
#  weekWins       :integer          default(0), unsigned, not null
#
module Characters
  class ArenaTeamMember < CharactersApplicationRecord
    self.table_name = 'arena_team_member'
    self.primary_key = %w[arenaTeamId guid]
  end
end
