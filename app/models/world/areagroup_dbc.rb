# frozen_string_literal: true

# == Schema Information
#
# Table name: areagroup_dbc
#
#  AreaID_1   :integer          default(0), not null
#  AreaID_2   :integer          default(0), not null
#  AreaID_3   :integer          default(0), not null
#  AreaID_4   :integer          default(0), not null
#  AreaID_5   :integer          default(0), not null
#  AreaID_6   :integer          default(0), not null
#  ID         :integer          default(0), not null, primary key
#  NextAreaID :integer          default(0), not null
#
module World
  class AreagroupDbc < WorldApplicationRecord
    self.table_name = 'areagroup_dbc'
    self.primary_key = 'ID'
  end
end
