# frozen_string_literal: true

# == Schema Information
#
# Table name: mail_server_character
#
#  guid   :integer          unsigned, not null, primary key
#  mailId :integer          unsigned, not null, primary key
#
module Characters
  class MailServerCharacter < CharactersApplicationRecord
    self.table_name = 'mail_server_character'
    self.primary_key = %w[guid mailId]
  end
end
