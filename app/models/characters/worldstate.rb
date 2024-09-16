# frozen_string_literal: true

# == Schema Information
#
# Table name: worldstates
#
#  comment :text(255)
#  entry   :integer          default(0), unsigned, not null, primary key
#  value   :integer          default(0), unsigned, not null
#
module Characters
  class Worldstate < CharactersApplicationRecord
    self.table_name = 'worldstates'
    self.primary_key = :entry
  end
end
