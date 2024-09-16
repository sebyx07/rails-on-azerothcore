# frozen_string_literal: true

# == Schema Information
#
# Table name: profanity_name
#
#  name :string(12)       not null, primary key
#
module Characters
  class ProfanityName < CharactersApplicationRecord
    self.table_name = 'profanity_name'
    self.primary_key = :name
  end
end
