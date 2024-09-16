# frozen_string_literal: true

# == Schema Information
#
# Table name: guild_bank_right
#
#  SlotPerDay :integer          default(0), unsigned, not null
#  TabId      :integer          default(0), unsigned, not null
#  gbright    :integer          default(0), unsigned, not null
#  guildid    :integer          default(0), unsigned, not null, primary key
#  rid        :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  guildid_key  (guildid)
#
module Characters
  class GuildBankRight < CharactersApplicationRecord
    self.table_name = 'guild_bank_right'
    self.primary_key = %i[tab_id guildid rid]
  end
end
