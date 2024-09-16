# frozen_string_literal: true

# == Schema Information
#
# Table name: command
#
#  help     :text(4294967295)
#  name     :string(50)       default(""), not null, primary key
#  security :integer          default(0), unsigned, not null
#
module World
  class Command < WorldApplicationRecord
    self.table_name = 'command'
    self.primary_key = 'name'
  end
end
