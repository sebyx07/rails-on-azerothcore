# frozen_string_literal: true

# == Schema Information
#
# Table name: module_string
#
#  id                                   :integer          unsigned, not null, primary key
#  module(module dir name, eg mod-cfbg) :string(255)      not null, primary key
#  string                               :text(65535)      not null
#
module World
  class ModuleString < WorldApplicationRecord
    self.table_name = 'module_string'
    self.primary_key = 'id'
  end
end
