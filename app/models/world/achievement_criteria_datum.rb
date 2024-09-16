# frozen_string_literal: true

# == Schema Information
#
# Table name: achievement_criteria_data
#
#  ScriptName  :string(64)       default(""), not null
#  type        :integer          default(0), unsigned, not null, primary key
#  value1      :integer          default(0), unsigned, not null
#  value2      :integer          default(0), unsigned, not null
#  criteria_id :integer          not null, primary key
#
module World
  class AchievementCriteriaDatum < WorldApplicationRecord
    self.table_name = 'achievement_criteria_data'
    self.primary_key = %w[criteria_id type]
    belongs_to :criteria, optional: true
  end
end
