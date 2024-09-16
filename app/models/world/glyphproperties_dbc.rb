# frozen_string_literal: true

# == Schema Information
#
# Table name: glyphproperties_dbc
#
#  GlyphSlotFlags :integer          default(0), not null
#  ID             :integer          default(0), not null, primary key
#  SpellID        :integer          default(0), not null
#  SpellIconID    :integer          default(0), not null
#
module World
  class GlyphpropertiesDbc < WorldApplicationRecord
    self.table_name = 'glyphproperties_dbc'
    self.primary_key = 'ID'
  end
end
