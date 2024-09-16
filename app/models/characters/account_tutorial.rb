# frozen_string_literal: true

# == Schema Information
#
# Table name: account_tutorial
#
#  accountId(Account Identifier) :integer          default(0), unsigned, not null, primary key
#  tut0                          :integer          default(0), unsigned, not null
#  tut1                          :integer          default(0), unsigned, not null
#  tut2                          :integer          default(0), unsigned, not null
#  tut3                          :integer          default(0), unsigned, not null
#  tut4                          :integer          default(0), unsigned, not null
#  tut5                          :integer          default(0), unsigned, not null
#  tut6                          :integer          default(0), unsigned, not null
#  tut7                          :integer          default(0), unsigned, not null
#
module Characters
  class AccountTutorial < CharactersApplicationRecord
    self.table_name = 'account_tutorial'
    self.primary_key = 'accountId'
  end
end
