# frozen_string_literal: true

# == Schema Information
#
# Table name: pool_quest
#
#  description :string(255)
#  entry       :integer          default(0), unsigned, not null, primary key
#  pool_entry  :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_guid  (entry)
#
module World
  class PoolQuest < WorldApplicationRecord
    self.table_name = 'pool_quest'
    self.primary_key =  :entry
  end
end
