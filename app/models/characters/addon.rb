# frozen_string_literal: true

# == Schema Information
#
# Table name: addons
#
#  crc  :integer          default(0), unsigned, not null
#  name :string(120)      default(""), not null, primary key
#
module Characters
  class Addon < CharactersApplicationRecord
    self.table_name = 'addons'
    self.primary_key = 'name'
  end
end
