# frozen_string_literal: true

# == Schema Information
#
# Table name: channels
#
#  announce  :integer          default(1), unsigned, not null
#  channelId :integer          unsigned, not null, primary key
#  lastUsed  :integer          unsigned, not null
#  name      :string(128)      not null
#  ownership :integer          default(1), unsigned, not null
#  password  :string(32)
#  team      :integer          unsigned, not null
#
module Characters
  class Channel < CharactersApplicationRecord
    self.table_name = 'channels'
    self.primary_key = 'channelId'
  end
end
