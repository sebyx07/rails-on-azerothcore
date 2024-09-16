# frozen_string_literal: true

# == Schema Information
#
# Table name: spellcategory_dbc
#
#  Flags :integer          default(0), not null
#  ID    :integer          default(0), not null, primary key
#
module World
  class SpellcategoryDbc < WorldApplicationRecord
    self.table_name = 'spellcategory_dbc'
    self.primary_key = 'ID'
  end
end
