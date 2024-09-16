# frozen_string_literal: true

# == Schema Information
#
# Table name: updates_include
#
#  path(directory to include. $ means relative to the source directory.)  :string(200)      not null, primary key
#  state(defines if the directory contains released or archived updates.) :string           default("RELEASED"), not null
#
module World
  class UpdatesInclude < WorldApplicationRecord
    self.table_name = 'updates_include'
    self.primary_key = 'path'
  end
end
