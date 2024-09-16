# frozen_string_literal: true

# == Schema Information
#
# Table name: reserved_name
#
#  name :string(12)       not null, primary key
#
module Characters
  class ReservedName < CharactersApplicationRecord
    self.table_name = 'reserved_name'
    self.primary_key = :name
  end
end
