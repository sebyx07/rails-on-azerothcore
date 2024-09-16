# frozen_string_literal: true

# == Schema Information
#
# Table name: channels_bans
#
#  banTime    :integer          unsigned, not null
#  channelId  :integer          unsigned, not null, primary key
#  playerGUID :integer          unsigned, not null, primary key
#
module Characters
  class ChannelsBan < CharactersApplicationRecord
    self.table_name = 'channels_bans'
    self.primary_key = %w[channelId playerGUID]
  end
end
