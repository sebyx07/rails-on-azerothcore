# frozen_string_literal: true

# == Schema Information
#
# Table name: pet_spell_cooldown
#
#  category                                 :integer          default(0), unsigned
#  guid(Global Unique Identifier, Low part) :integer          default(0), unsigned, not null, primary key
#  spell(Spell Identifier)                  :integer          default(0), unsigned, not null, primary key
#  time                                     :integer          default(0), unsigned, not null
#
module Characters
  class PetSpellCooldown < CharactersApplicationRecord
    self.table_name = 'pet_spell_cooldown'
    self.primary_key = %i[guid spell]
  end
end
