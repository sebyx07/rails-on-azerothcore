# frozen_string_literal: true

# == Schema Information
#
# Table name: channels_rights
#
#  delaymessage :string(255)      default(""), not null
#  flags        :integer          unsigned, not null
#  joinmessage  :string(255)      default(""), not null
#  moderators   :text(65535)
#  name         :string(128)      not null, primary key
#  speakdelay   :integer          unsigned, not null
#
module Characters
  class ChannelsRight < CharactersApplicationRecord
    self.table_name = 'channels_rights'
    self.primary_key = 'name'
  end
end
