# frozen_string_literal: true

# == Schema Information
#
# Table name: pet_name_generation
#
#  id    :integer          unsigned, not null, primary key
#  entry :integer          default(0), unsigned, not null
#  half  :integer          default(0), unsigned, not null
#  word  :text(255)        not null
#
module World
  class PetNameGeneration < WorldApplicationRecord
    self.table_name = 'pet_name_generation'
    self.primary_key = :id
  end
end
