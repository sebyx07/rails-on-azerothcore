# frozen_string_literal: true

# == Schema Information
#
# Table name: character_spell
#
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  specMask                       :integer          default(1), unsigned, not null
#  spell(Spell Identifier)        :integer          default(0), unsigned, not null, primary key
#
module Characters
  class CharacterSpell < CharactersApplicationRecord
    self.table_name = 'character_spell'
    self.primary_key = %i[guid spell]
  end
end
