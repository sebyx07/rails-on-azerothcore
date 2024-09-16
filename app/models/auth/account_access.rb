# frozen_string_literal: true

# == Schema Information
#
# Table name: account_access
#
#  id      :integer          unsigned, not null, primary key
#  RealmID :integer          default(-1), not null
#  comment :string(255)      default("")
#  gmlevel :integer          unsigned, not null
#
module Auth
  class AccountAccess < AuthApplicationRecord
    self.table_name = 'account_access'
    self.primary_key = 'id'
  end
end
