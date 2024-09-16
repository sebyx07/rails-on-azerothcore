# frozen_string_literal: true

# == Schema Information
#
# Table name: skilltiers_dbc
#
#  Cost_1   :integer          default(0), not null
#  Cost_10  :integer          default(0), not null
#  Cost_11  :integer          default(0), not null
#  Cost_12  :integer          default(0), not null
#  Cost_13  :integer          default(0), not null
#  Cost_14  :integer          default(0), not null
#  Cost_15  :integer          default(0), not null
#  Cost_16  :integer          default(0), not null
#  Cost_2   :integer          default(0), not null
#  Cost_3   :integer          default(0), not null
#  Cost_4   :integer          default(0), not null
#  Cost_5   :integer          default(0), not null
#  Cost_6   :integer          default(0), not null
#  Cost_7   :integer          default(0), not null
#  Cost_8   :integer          default(0), not null
#  Cost_9   :integer          default(0), not null
#  ID       :integer          default(0), not null, primary key
#  Value_1  :integer          default(0), not null
#  Value_10 :integer          default(0), not null
#  Value_11 :integer          default(0), not null
#  Value_12 :integer          default(0), not null
#  Value_13 :integer          default(0), not null
#  Value_14 :integer          default(0), not null
#  Value_15 :integer          default(0), not null
#  Value_16 :integer          default(0), not null
#  Value_2  :integer          default(0), not null
#  Value_3  :integer          default(0), not null
#  Value_4  :integer          default(0), not null
#  Value_5  :integer          default(0), not null
#  Value_6  :integer          default(0), not null
#  Value_7  :integer          default(0), not null
#  Value_8  :integer          default(0), not null
#  Value_9  :integer          default(0), not null
#
module World
  class SkilltiersDbc < WorldApplicationRecord
    self.table_name = 'skilltiers_dbc'
    self.primary_key = 'ID'
  end
end
