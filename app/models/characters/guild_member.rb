# frozen_string_literal: true

# == Schema Information
#
# Table name: guild_member
#
#  guid                         :integer          unsigned, not null
#  guildid(Guild Identificator) :integer          unsigned, not null
#  offnote                      :string(31)       default(""), not null
#  pnote                        :string(31)       default(""), not null
#  rank                         :integer          unsigned, not null
#
# Indexes
#
#  guid_key          (guid) UNIQUE
#  guildid_key       (guildid)
#  guildid_rank_key  (guildid,rank)
#
module Characters
  class GuildMember < CharactersApplicationRecord
    self.table_name = 'guild_member'
  end
end
