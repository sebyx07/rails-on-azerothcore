# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_pet_auras
#
#  aura(pet aura id)     :integer          unsigned, not null
#  effectId              :integer          default(0), unsigned, not null, primary key
#  pet(pet id; 0 = all)  :integer          default(0), unsigned, not null, primary key
#  spell(dummy spell id) :integer          unsigned, not null, primary key
#
module World
  class SpellPetAura < WorldApplicationRecord
    self.table_name = 'spell_pet_auras'
    self.primary_key = %w[effectId pet spell]
  end
end
