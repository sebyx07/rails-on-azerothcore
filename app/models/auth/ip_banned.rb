# frozen_string_literal: true

# == Schema Information
#
# Table name: ip_banned
#
#  bandate   :integer          unsigned, not null, primary key
#  bannedby  :string(50)       default("[Console]"), not null
#  banreason :string(255)      default("no reason"), not null
#  ip        :string(15)       default("127.0.0.1"), not null, primary key
#  unbandate :integer          unsigned, not null
#
module Auth
  class IpBanned < AuthApplicationRecord
    self.table_name = 'ip_banned'
    self.primary_key = %w[ip bandate]
  end
end
