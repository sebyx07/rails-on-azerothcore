# frozen_string_literal: true

# == Schema Information
#
# Table name: guild_bank_tab
#
#  TabIcon :string(100)      default(""), not null
#  TabId   :integer          default(0), unsigned, not null, primary key
#  TabName :string(16)       default(""), not null
#  TabText :string(500)
#  guildid :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  guildid_key  (guildid)
#
module Characters
  class GuildBankTab < CharactersApplicationRecord
    self.table_name = 'guild_bank_tab'
    self.primary_key = %i[TabId guildid]
  end
end
