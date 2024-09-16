# frozen_string_literal: true

# == Schema Information
#
# Table name: areatrigger
#
#  entry                                                          :integer          unsigned, not null, primary key
#  height(Most commonly used when size is 0, but not always)      :float(24)        default(0.0), not null
#  length(Most commonly used when size is 0, but not always)      :float(24)        default(0.0), not null
#  map                                                            :integer          default(0), unsigned, not null
#  orientation(Most commonly used when size is 0, but not always) :float(24)        default(0.0), not null
#  radius(Seems to be a box of size yards with center at x,y,z)   :float(24)        default(0.0), not null
#  width(Most commonly used when size is 0, but not always)       :float(24)        default(0.0), not null
#  x                                                              :float(24)        default(0.0), not null
#  y                                                              :float(24)        default(0.0), not null
#  z                                                              :float(24)        default(0.0), not null
#
module World
  class Areatrigger < WorldApplicationRecord
    self.table_name = 'areatrigger'
    self.primary_key = 'entry'
  end
end
