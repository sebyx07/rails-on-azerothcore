# frozen_string_literal: true

# == Schema Information
#
# Table name: bugreport
#
#  id(Identifier) :integer          unsigned, not null, primary key
#  content        :text(4294967295) not null
#  type           :text(4294967295) not null
#
module Characters
  class Bugreport < CharactersApplicationRecord
    self.table_name = 'bugreport'
    self.primary_key = 'id'
  end
end
