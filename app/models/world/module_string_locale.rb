# frozen_string_literal: true

# == Schema Information
#
# Table name: module_string_locale
#
#  id(Corresponds to an existing entry in module_string)     :integer          unsigned, not null, primary key
#  locale                                                    :string           not null, primary key
#  module(Corresponds to an existing entry in module_string) :string(255)      not null, primary key
#  string                                                    :text(65535)      not null
#
module World
  class ModuleStringLocale < WorldApplicationRecord
    self.table_name = 'module_string_locale'
    self.primary_key = [:id, :locale, :module]
  end
end
