# frozen_string_literal: true

# == Schema Information
#
# Table name: playercreateinfo
#
#  class       :integer          default(0), unsigned, not null, primary key
#  map         :integer          default(0), unsigned, not null
#  orientation :float(24)        default(0.0), not null
#  position_x  :float(24)        default(0.0), not null
#  position_y  :float(24)        default(0.0), not null
#  position_z  :float(24)        default(0.0), not null
#  race        :integer          default(0), unsigned, not null, primary key
#  zone        :integer          default(0), unsigned, not null
#
module World
  class Playercreateinfo < WorldApplicationRecord
    self.table_name = 'playercreateinfo'
    self.primary = [:race, :class]
  end
end
