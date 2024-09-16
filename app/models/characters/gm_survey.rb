# frozen_string_literal: true

# == Schema Information
#
# Table name: gm_survey
#
#  comment    :text(4294967295) not null
#  createTime :integer          default(0), unsigned, not null
#  guid       :integer          default(0), unsigned, not null
#  mainSurvey :integer          default(0), unsigned, not null
#  maxMMR     :integer          not null
#  surveyId   :integer          unsigned, not null, primary key
#
module Characters
  class GmSurvey < CharactersApplicationRecord
    self.table_name = 'gm_survey'
    self.primary_key = :surveyId
  end
end
