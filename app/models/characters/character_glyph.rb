# frozen_string_literal: true

# == Schema Information
#
# Table name: character_glyphs
#
#  glyph1      :integer          default(0), unsigned
#  glyph2      :integer          default(0), unsigned
#  glyph3      :integer          default(0), unsigned
#  glyph4      :integer          default(0), unsigned
#  glyph5      :integer          default(0), unsigned
#  glyph6      :integer          default(0), unsigned
#  guid        :integer          unsigned, not null, primary key
#  talentGroup :integer          default(0), unsigned, not null, primary key
#
module Characters
  class CharacterGlyph < CharactersApplicationRecord
    self.table_name = 'character_glyphs'
    self.primary_key = %i[guid talentGroup]
  end
end
