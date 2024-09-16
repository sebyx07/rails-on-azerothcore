# frozen_string_literal: true

# == Schema Information
#
# Table name: uptime
#
#  maxplayers :integer          default(0), unsigned, not null
#  realmid    :integer          unsigned, not null, primary key
#  revision   :string(255)      default("AzerothCore"), not null
#  starttime  :integer          default(0), unsigned, not null, primary key
#  uptime     :integer          default(0), unsigned, not null
#
module Auth
  class Uptime < AuthApplicationRecord
    self.table_name = 'uptime'
    self.primary_key = [:realmid, :starttime]
  end
end
