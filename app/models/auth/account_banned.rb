# frozen_string_literal: true

# == Schema Information
#
# Table name: account_banned
#
#  id(Account id) :integer          default(0), unsigned, not null, primary key
#  active         :integer          default(1), unsigned, not null
#  bandate        :integer          default(0), unsigned, not null, primary key
#  bannedby       :string(50)       not null
#  banreason      :string(255)      not null
#  unbandate      :integer          default(0), unsigned, not null
#
module Auth
  class AccountBanned < AuthApplicationRecord
    self.table_name = 'account_banned'
    self.primary_key = %i[id bandate]
  end
end
