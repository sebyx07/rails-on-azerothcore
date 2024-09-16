# frozen_string_literal: true

# == Schema Information
#
# Table name: npc_vendor
#
#  ExtendedCost  :integer          default(0), unsigned, not null
#  VerifiedBuild :integer
#  entry         :integer          default(0), unsigned, not null, primary key
#  incrtime      :integer          default(0), unsigned, not null
#  item          :integer          default(0), not null, primary key
#  maxcount      :integer          default(0), unsigned, not null
#  slot          :integer          default(0), not null, primary key
#
# Indexes
#
#  slot  (slot)
#
module World
  class NpcVendor < WorldApplicationRecord
    self.table_name = 'npc_vendor'
    self.primary_key = %i[entry item slot]
  end
end
