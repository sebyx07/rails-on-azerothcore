# frozen_string_literal: true

# == Schema Information
#
# Table name: character_action
#
#  action :integer          default(0), unsigned, not null
#  button :integer          default(0), unsigned, not null, primary key
#  guid   :integer          default(0), unsigned, not null, primary key
#  spec   :integer          default(0), unsigned, not null, primary key
#  type   :integer          default(0), unsigned, not null
#
module Characters
  class CharacterAction < CharactersApplicationRecord
    self.table_name = 'character_action'
    self.primary_key = %i[guid button spec]
  end
end
