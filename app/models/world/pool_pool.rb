# frozen_string_literal: true

# == Schema Information
#
# Table name: pool_pool
#
#  chance      :float(24)        default(0.0), not null
#  description :string(255)
#  mother_pool :integer          default(0), unsigned, not null
#  pool_id     :integer          default(0), unsigned, not null, primary key
#
module World
  class PoolPool < WorldApplicationRecord
    self.table_name = 'pool_pool'
    self.primary_key =  :pool_id
  end
end
