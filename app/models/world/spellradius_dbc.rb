# frozen_string_literal: true

# == Schema Information
#
# Table name: spellradius_dbc
#
#  ID             :integer          default(0), not null, primary key
#  Radius         :float(24)        default(0.0), not null
#  RadiusMax      :float(24)        default(0.0), not null
#  RadiusPerLevel :float(24)        default(0.0), not null
#
module World
  class SpellradiusDbc < WorldApplicationRecord
    self.table_name = 'spellradius_dbc'
    self.primary_key = 'ID'
  end
end
