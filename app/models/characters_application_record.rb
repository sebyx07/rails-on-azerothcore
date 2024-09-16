# frozen_string_literal: true

class CharactersApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: { writing: :characters, reading: :characters }
end
