# frozen_string_literal: true

# == Schema Information
#
# Table name: character_talent
#
#  guid     :integer          unsigned, not null, primary key
#  specMask :integer          default(0), unsigned, not null
#  spell    :integer          unsigned, not null, primary key
#
module Characters
  class CharacterTalent < CharactersApplicationRecord
    self.table_name = 'character_talent'
    self.primary_key = %i[guid spell]
  end
end
