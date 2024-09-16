# frozen_string_literal: true

# == Schema Information
#
# Table name: logs_ip_actions
#
#  id(Unique Identifier)                  :integer          unsigned, not null, primary key
#  character_guid(Character Guid)         :integer          unsigned, not null
#  comment(Allows users to add a comment) :text(65535)
#  ip                                     :string(15)       default("127.0.0.1"), not null
#  systemnote(Notes inserted by system)   :text(65535)
#  time(Timestamp)                        :datetime         not null
#  type                                   :integer          unsigned, not null
#  unixtime(Unixtime)                     :integer          unsigned, not null
#  account_id(Account ID)                 :integer          unsigned, not null
#
module Auth
  class LogsIpAction < AuthApplicationRecord
    self.table_name = 'logs_ip_actions'
    self.primary_key = 'id'
    belongs_to :account, optional: true, class_name: 'Auth::Account', foreign_key: 'account_id'
  end
end
