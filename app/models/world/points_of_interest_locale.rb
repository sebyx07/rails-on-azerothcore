# frozen_string_literal: true

# == Schema Information
#
# Table name: points_of_interest_locale
#
#  ID            :integer          default(0), unsigned, not null, primary key
#  Name          :text(65535)
#  VerifiedBuild :integer
#  locale        :string(4)        not null
#
module World
  class PointsOfInterestLocale < WorldApplicationRecord
    self.table_name = 'points_of_interest_locale'
    self.primary_key = 'ID'
  end
end
