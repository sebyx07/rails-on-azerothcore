# frozen_string_literal: true

class WorldApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: { writing: :world, reading: :world }
end
