# frozen_string_literal: true

# == Schema Information
#
# Table name: page_text_locale
#
#  ID            :integer          default(0), unsigned, not null, primary key
#  Text          :text(65535)
#  VerifiedBuild :integer
#  locale        :string(4)        not null, primary key
#
module World
  class PageTextLocale < WorldApplicationRecord
    self.table_name = 'page_text_locale'
    self.primary_key = [:locale, :ID]
  end
end
