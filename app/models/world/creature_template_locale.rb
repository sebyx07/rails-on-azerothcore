# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_template_locale
#
#  Name          :text(65535)
#  Title         :text(65535)
#  VerifiedBuild :integer
#  entry         :integer          default(0), unsigned, not null, primary key
#  locale        :string(4)        not null, primary key
#
module World
  class CreatureTemplateLocale < WorldApplicationRecord
    self.table_name = 'creature_template_locale'
    self.primary_key = %w[entry locale]
  end
end
