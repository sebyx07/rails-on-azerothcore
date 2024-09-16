# frozen_string_literal: true

# == Schema Information
#
# Table name: gm_subsurvey
#
#  answer        :integer          default(0), unsigned, not null
#  answerComment :text(65535)      not null
#  questionId    :integer          default(0), unsigned, not null, primary key
#  surveyId      :integer          unsigned, not null, primary key
#
module Characters
  class GmSubsurvey < CharactersApplicationRecord
    self.table_name = 'gm_subsurvey'
    self.primary_key = %i[questionId surveyId]
  end
end
