# frozen_string_literal: true

# == Schema Information
#
# Table name: pet_spell
#
#  active                         :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  spell(Spell Identifier)        :integer          default(0), unsigned, not null, primary key
#
module Characters
  class PetSpell < CharactersApplicationRecord
    self.table_name = 'pet_spell'
    self.primary_key = %i[guid spell]
  end
end
