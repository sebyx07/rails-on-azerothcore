# frozen_string_literal: true

# == Schema Information
#
# Table name: guild_bank_eventlog
#
#  DestTabId(Destination Tab Id)                        :integer          default(0), unsigned, not null
#  EventType(Event type)                                :integer          default(0), unsigned, not null
#  ItemOrMoney                                          :integer          default(0), unsigned, not null
#  ItemStackCount                                       :integer          default(0), unsigned, not null
#  LogGuid(Log record identificator - auxiliary column) :integer          default(0), unsigned, not null, primary key
#  PlayerGuid                                           :integer          default(0), unsigned, not null
#  TabId(Guild bank TabId)                              :integer          default(0), unsigned, not null, primary key
#  TimeStamp(Event UNIX time)                           :integer          default(0), unsigned, not null
#  guildid(Guild Identificator)                         :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  Idx_LogGuid     (LogGuid)
#  Idx_PlayerGuid  (PlayerGuid)
#  guildid_key     (guildid)
#
module Characters
  class GuildBankEventlog < CharactersApplicationRecord
    self.table_name = 'guild_bank_eventlog'
    self.primary_key = %i[log_guid tab_id guildid]
  end
end
