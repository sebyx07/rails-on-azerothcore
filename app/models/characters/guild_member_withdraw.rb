# frozen_string_literal: true

# == Schema Information
#
# Table name: guild_member_withdraw
#
#  guid  :integer          unsigned, not null, primary key
#  money :integer          default(0), unsigned, not null
#  tab0  :integer          default(0), unsigned, not null
#  tab1  :integer          default(0), unsigned, not null
#  tab2  :integer          default(0), unsigned, not null
#  tab3  :integer          default(0), unsigned, not null
#  tab4  :integer          default(0), unsigned, not null
#  tab5  :integer          default(0), unsigned, not null
#
module Characters
  class GuildMemberWithdraw < CharactersApplicationRecord
    self.table_name = 'guild_member_withdraw'
    self.primary_key = :guid
  end
end
