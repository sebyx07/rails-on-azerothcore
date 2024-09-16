# frozen_string_literal: true

# == Schema Information
#
# Table name: character_instance
#
#  extended  :integer          unsigned, not null
#  guid      :integer          default(0), unsigned, not null, primary key
#  instance  :integer          default(0), unsigned, not null, primary key
#  permanent :integer          default(0), unsigned, not null
#
# Indexes
#
#  instance  (instance)
#
module Characters
  class CharacterInstance < CharactersApplicationRecord
    self.table_name = 'character_instance'
    self.primary_key = %i[guid instance]
  end
end
