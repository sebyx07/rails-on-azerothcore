# frozen_string_literal: true

# == Schema Information
#
# Table name: movie_dbc
#
#  Filename :string(100)
#  ID       :integer          default(0), not null, primary key
#  Volume   :integer          default(0), not null
#
module World
  class MovieDbc < WorldApplicationRecord
    self.table_name = 'movie_dbc'
    self.primary_key = 'ID'
  end
end
