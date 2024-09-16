# frozen_string_literal: true

# == Schema Information
#
# Table name: scalingstatdistribution_dbc
#
#  Bonus_1   :integer          default(0), not null
#  Bonus_10  :integer          default(0), not null
#  Bonus_2   :integer          default(0), not null
#  Bonus_3   :integer          default(0), not null
#  Bonus_4   :integer          default(0), not null
#  Bonus_5   :integer          default(0), not null
#  Bonus_6   :integer          default(0), not null
#  Bonus_7   :integer          default(0), not null
#  Bonus_8   :integer          default(0), not null
#  Bonus_9   :integer          default(0), not null
#  ID        :integer          default(0), not null, primary key
#  Maxlevel  :integer          default(0), not null
#  StatID_1  :integer          default(0), not null
#  StatID_10 :integer          default(0), not null
#  StatID_2  :integer          default(0), not null
#  StatID_3  :integer          default(0), not null
#  StatID_4  :integer          default(0), not null
#  StatID_5  :integer          default(0), not null
#  StatID_6  :integer          default(0), not null
#  StatID_7  :integer          default(0), not null
#  StatID_8  :integer          default(0), not null
#  StatID_9  :integer          default(0), not null
#
module World
  class ScalingstatdistributionDbc < WorldApplicationRecord
    self.table_name = 'scalingstatdistribution_dbc'
    self.primary_key = 'ID'
  end
end
