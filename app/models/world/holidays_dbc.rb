# frozen_string_literal: true

# == Schema Information
#
# Table name: holidays_dbc
#
#  CalendarFilterType   :integer          default(0), not null
#  CalendarFlags_1      :integer          default(0), not null
#  CalendarFlags_10     :integer          default(0), not null
#  CalendarFlags_2      :integer          default(0), not null
#  CalendarFlags_3      :integer          default(0), not null
#  CalendarFlags_4      :integer          default(0), not null
#  CalendarFlags_5      :integer          default(0), not null
#  CalendarFlags_6      :integer          default(0), not null
#  CalendarFlags_7      :integer          default(0), not null
#  CalendarFlags_8      :integer          default(0), not null
#  CalendarFlags_9      :integer          default(0), not null
#  Date_1               :integer          default(0), not null
#  Date_10              :integer          default(0), not null
#  Date_11              :integer          default(0), not null
#  Date_12              :integer          default(0), not null
#  Date_13              :integer          default(0), not null
#  Date_14              :integer          default(0), not null
#  Date_15              :integer          default(0), not null
#  Date_16              :integer          default(0), not null
#  Date_17              :integer          default(0), not null
#  Date_18              :integer          default(0), not null
#  Date_19              :integer          default(0), not null
#  Date_2               :integer          default(0), not null
#  Date_20              :integer          default(0), not null
#  Date_21              :integer          default(0), not null
#  Date_22              :integer          default(0), not null
#  Date_23              :integer          default(0), not null
#  Date_24              :integer          default(0), not null
#  Date_25              :integer          default(0), not null
#  Date_26              :integer          default(0), not null
#  Date_3               :integer          default(0), not null
#  Date_4               :integer          default(0), not null
#  Date_5               :integer          default(0), not null
#  Date_6               :integer          default(0), not null
#  Date_7               :integer          default(0), not null
#  Date_8               :integer          default(0), not null
#  Date_9               :integer          default(0), not null
#  Duration_1           :integer          default(0), not null
#  Duration_10          :integer          default(0), not null
#  Duration_2           :integer          default(0), not null
#  Duration_3           :integer          default(0), not null
#  Duration_4           :integer          default(0), not null
#  Duration_5           :integer          default(0), not null
#  Duration_6           :integer          default(0), not null
#  Duration_7           :integer          default(0), not null
#  Duration_8           :integer          default(0), not null
#  Duration_9           :integer          default(0), not null
#  Flags                :integer          default(0), not null
#  HolidayDescriptionID :integer          default(0), not null
#  HolidayNameID        :integer          default(0), not null
#  ID                   :integer          default(0), not null, primary key
#  Looping              :integer          default(0), not null
#  Priority             :integer          default(0), not null
#  Region               :integer          default(0), not null
#  TextureFilename      :string(100)
#
module World
  class HolidaysDbc < WorldApplicationRecord
    self.table_name = 'holidays_dbc'
    self.primary_key = :ID
  end
end
