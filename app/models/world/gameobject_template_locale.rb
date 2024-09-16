# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject_template_locale
#
#  VerifiedBuild  :integer
#  castBarCaption :text(65535)
#  entry          :integer          default(0), unsigned, not null, primary key
#  locale         :string(4)        not null, primary key
#  name           :text(65535)
#
module World
  class GameobjectTemplateLocale < WorldApplicationRecord
    self.table_name = 'gameobject_template_locale'
    self.primary_key = %i[entry locale]
  end
end
