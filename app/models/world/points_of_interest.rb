# frozen_string_literal: true

# == Schema Information
#
# Table name: points_of_interest
#
#  Flags      :integer          default(0), unsigned, not null
#  ID         :integer          default(0), unsigned, not null, primary key
#  Icon       :integer          default(0), unsigned, not null
#  Importance :integer          default(0), unsigned, not null
#  Name       :text(65535)      not null
#  PositionX  :float(24)        default(0.0), not null
#  PositionY  :float(24)        default(0.0), not null
#
module World
  class PointsOfInterest < WorldApplicationRecord
    self.table_name = 'points_of_interest'
    self.primary_key = 'ID'
  end
end
