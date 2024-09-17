# frozen_string_literal: true

# == Schema Information
#
# Table name: pool_template
#
#  description                                      :string(255)
#  entry(Pool entry)                                :integer          default(0), unsigned, not null, primary key
#  max_limit(Max number of objects (0) is no limit) :integer          default(0), unsigned, not null
#
module World
  class PoolTemplate < WorldApplicationRecord
    self.table_name = 'pool_template'
    self.primary_key =  :entry
  end
end
