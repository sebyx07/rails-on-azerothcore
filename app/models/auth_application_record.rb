# frozen_string_literal: true

class AuthApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: { writing: :auth, reading: :auth }
end
