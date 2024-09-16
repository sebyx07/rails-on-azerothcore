# frozen_string_literal: true

# == Schema Information
#
# Table name: realmlist
#
#  id                   :integer          unsigned, not null, primary key
#  address              :string(255)      default("127.0.0.1"), not null
#  allowedSecurityLevel :integer          default(0), unsigned, not null
#  flag                 :integer          default(2), unsigned, not null
#  gamebuild            :integer          default(12340), unsigned, not null
#  icon                 :integer          default(0), unsigned, not null
#  localAddress         :string(255)      default("127.0.0.1"), not null
#  localSubnetMask      :string(255)      default("255.255.255.0"), not null
#  name                 :string(32)       default(""), not null
#  population           :float(24)        default(0.0), not null
#  port                 :integer          default(8085), unsigned, not null
#  timezone             :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_name  (name) UNIQUE
#
module Auth
  class Realmlist < AuthApplicationRecord
    self.table_name = 'realmlist'
    self.primary_key = 'id'
  end
end
