# frozen_string_literal: true

# == Schema Information
#
# Table name: arena_team
#
#  arenaTeamId     :integer          default(0), unsigned, not null, primary key
#  backgroundColor :integer          default(0), unsigned, not null
#  borderColor     :integer          default(0), unsigned, not null
#  borderStyle     :integer          default(0), unsigned, not null
#  captainGuid     :integer          default(0), unsigned, not null
#  emblemColor     :integer          default(0), unsigned, not null
#  emblemStyle     :integer          default(0), unsigned, not null
#  name            :string(24)       not null
#  rank            :integer          default(0), unsigned, not null
#  rating          :integer          default(0), unsigned, not null
#  seasonGames     :integer          default(0), unsigned, not null
#  seasonWins      :integer          default(0), unsigned, not null
#  type            :integer          default(0), unsigned, not null
#  weekGames       :integer          default(0), unsigned, not null
#  weekWins        :integer          default(0), unsigned, not null
#
module Characters
  class ArenaTeam < CharactersApplicationRecord
    self.table_name = 'arena_team'
    self.primary_key = 'arenaTeamId'
  end
end
