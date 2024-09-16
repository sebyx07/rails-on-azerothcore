# frozen_string_literal: true

# == Schema Information
#
# Table name: account_muted
#
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  mutedate                       :integer          default(0), unsigned, not null, primary key
#  mutedby                        :string(50)       not null
#  mutereason                     :string(255)      not null
#  mutetime                       :integer          default(0), unsigned, not null
#
module Auth
  class AccountMuted < AuthApplicationRecord
    self.table_name = 'account_muted'
    self.primary_key = %i[guid mutedate]
  end
end
