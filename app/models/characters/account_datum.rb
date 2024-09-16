# frozen_string_literal: true

# == Schema Information
#
# Table name: account_data
#
#  accountId(Account Identifier) :integer          default(0), unsigned, not null, primary key
#  data                          :binary(65535)    not null
#  time                          :integer          default(0), unsigned, not null
#  type                          :integer          default(0), unsigned, not null, primary key
#
module Characters
  class AccountDatum < CharactersApplicationRecord
    self.table_name = 'account_data'
    self.primary_key = %w[accountId type]
  end
end
