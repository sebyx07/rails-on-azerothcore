# frozen_string_literal: true

# == Schema Information
#
# Table name: pet_name_generation_locale
#
#  Entry  :integer          default(0), unsigned, not null
#  Half   :integer          default(0), unsigned, not null
#  ID     :integer          unsigned, not null, primary key
#  Locale :string(4)        not null, primary key
#  Word   :text(255)        not null
#
module World
  class PetNameGenerationLocale < WorldApplicationRecord
    self.table_name = 'pet_name_generation_locale'
    self.primary_key = [:ID, :Locale]
  end
end
