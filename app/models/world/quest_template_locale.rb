# frozen_string_literal: true

# == Schema Information
#
# Table name: quest_template_locale
#
#  CompletedText  :text(65535)
#  Details        :text(65535)
#  EndText        :text(65535)
#  ID             :integer          default(0), unsigned, not null, primary key
#  ObjectiveText1 :text(65535)
#  ObjectiveText2 :text(65535)
#  ObjectiveText3 :text(65535)
#  ObjectiveText4 :text(65535)
#  Objectives     :text(65535)
#  Title          :text(65535)
#  VerifiedBuild  :integer
#  locale         :string(4)        not null, primary key
#
module World
  class QuestTemplateLocale < WorldApplicationRecord
    self.table_name = 'quest_template_locale'
    self.primary_key = %i[ID locale]
  end
end
