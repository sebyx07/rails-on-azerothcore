# frozen_string_literal: true

# == Schema Information
#
# Table name: item_set_names_locale
#
#  ID            :integer          default(0), unsigned, not null, primary key
#  Name          :text(65535)
#  VerifiedBuild :integer
#  locale        :string(4)        not null, primary key
#
module World
  class ItemSetNamesLocale < WorldApplicationRecord
    self.table_name = 'item_set_names_locale'
    self.primary_key = [:ID, :locale]
  end
end
