# frozen_string_literal: true

# == Schema Information
#
# Table name: pool_gameobject
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
  class PoolGameobject < WorldApplicationRecord
    self.table_name = 'pool_gameobject'
    self.primary_key =  :guid
  end
end
