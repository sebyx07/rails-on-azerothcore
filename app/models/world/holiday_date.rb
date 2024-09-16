# frozen_string_literal: true

# == Schema Information
#
# Table name: holiday_dates
#
#  id               :integer          unsigned, not null, primary key
#  date_value       :integer          unsigned, not null
#  holiday_duration :integer          default(0), unsigned, not null
#  date_id          :integer          unsigned, not null, primary key
#
module World
  class HolidayDate < WorldApplicationRecord
    self.table_name = 'holiday_dates'
    self.primary_key = [:id, :date_id]
    belongs_to :date, optional: true
  end
end
