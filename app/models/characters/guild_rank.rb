# frozen_string_literal: true

# == Schema Information
#
# Table name: guild_rank
#
#  BankMoneyPerDay :integer          default(0), unsigned, not null
#  guildid         :integer          default(0), unsigned, not null, primary key
#  rid             :integer          unsigned, not null, primary key
#  rights          :integer          default(0), unsigned
#  rname           :string(20)       default(""), not null
#
# Indexes
#
#  Idx_rid  (rid)
#
module Characters
  class GuildRank < CharactersApplicationRecord
    self.table_name = 'guild_rank'
    self.primary_key = %i[rid guildid]
  end
end
