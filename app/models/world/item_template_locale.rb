# frozen_string_literal: true

# == Schema Information
#
# Table name: item_template_locale
#
#  Description   :text(65535)
#  ID            :integer          default(0), unsigned, not null, primary key
#  Name          :text(65535)
#  VerifiedBuild :integer
#  locale        :string(4)        not null, primary key
#
module World
  class ItemTemplateLocale < WorldApplicationRecord
    self.table_name = 'item_template_locale'
    self.primary_key = [:ID, :locale]
  end
end
