# frozen_string_literal: true

# == Schema Information
#
# Table name: spellduration_dbc
#
#  Duration         :integer          default(0), not null
#  DurationPerLevel :integer          default(0), not null
#  ID               :integer          default(0), not null, primary key
#  MaxDuration      :integer          default(0), not null
#
module World
  class SpelldurationDbc < WorldApplicationRecord
    self.table_name = 'spellduration_dbc'
    self.primary_key = 'ID'
  end
end
