# frozen_string_literal: true

# == Schema Information
#
# Table name: guild_eventlog
#
#  EventType(Event type)                                :integer          unsigned, not null
#  LogGuid(Log record identificator - auxiliary column) :integer          unsigned, not null, primary key
#  NewRank(New rank(in case promotion/demotion))        :integer          unsigned, not null
#  PlayerGuid1(Player 1)                                :integer          unsigned, not null
#  PlayerGuid2(Player 2)                                :integer          unsigned, not null
#  TimeStamp(Event UNIX time)                           :integer          unsigned, not null
#  guildid(Guild Identificator)                         :integer          unsigned, not null, primary key
#
# Indexes
#
#  Idx_LogGuid      (LogGuid)
#  Idx_PlayerGuid1  (PlayerGuid1)
#  Idx_PlayerGuid2  (PlayerGuid2)
#
module Characters
  class GuildEventlog < CharactersApplicationRecord
    self.table_name = 'guild_eventlog'
    self.primary_key = %i[LogGuid guildid]
  end
end
