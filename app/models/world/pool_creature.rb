# frozen_string_literal: true

# == Schema Information
#
# Table name: pool_creature
#
#  chance      :float(24)        default(0.0), not null
#  description :string(255)
#  guid        :integer          default(0), unsigned, not null, primary key
#  pool_entry  :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_guid  (guid)
#
module World
  class PoolCreature < WorldApplicationRecord
    self.table_name = 'pool_creature'
    self.primary_key = :guid
  end
end
