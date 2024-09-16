# frozen_string_literal: true

# == Schema Information
#
# Table name: character_pet
#
#  id             :integer          default(0), unsigned, not null, primary key
#  CreatedBySpell :integer          default(0), unsigned
#  PetType        :integer          default(0), unsigned, not null
#  Reactstate     :integer          default(0), unsigned, not null
#  abdata         :text(65535)
#  curhappiness   :integer          default(0), unsigned, not null
#  curhealth      :integer          default(1), unsigned, not null
#  curmana        :integer          default(0), unsigned, not null
#  entry          :integer          default(0), unsigned, not null
#  exp            :integer          default(0), unsigned, not null
#  level          :integer          default(1), unsigned, not null
#  modelid        :integer          default(0), unsigned
#  name           :string(21)       default("Pet"), not null
#  owner          :integer          default(0), unsigned, not null
#  renamed        :integer          default(0), unsigned, not null
#  savetime       :integer          default(0), unsigned, not null
#  slot           :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_slot  (slot)
#  owner     (owner)
#
module Characters
  class CharacterPet < CharactersApplicationRecord
    self.table_name = 'character_pet'
    self.primary_key = :id
  end
end
