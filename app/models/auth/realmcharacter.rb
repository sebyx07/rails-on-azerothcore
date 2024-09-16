# frozen_string_literal: true

# == Schema Information
#
# Table name: realmcharacters
#
#  acctid   :integer          unsigned, not null, primary key
#  numchars :integer          default(0), unsigned, not null
#  realmid  :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  acctid  (acctid)
#
module Auth
  class Realmcharacter < AuthApplicationRecord
    self.table_name = 'realmcharacters'
    self.primary_key = [:acctid, :realmid]
  end
end
