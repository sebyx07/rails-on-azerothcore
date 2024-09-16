# frozen_string_literal: true

# == Schema Information
#
# Table name: glyphslot_dbc
#
#  ID      :integer          default(0), not null, primary key
#  Tooltip :integer          default(0), not null
#  Type    :integer          default(0), not null
#
module World
  class GlyphslotDbc < WorldApplicationRecord
    self.table_name = 'glyphslot_dbc'
    self.primary_key = 'ID'
  end
end
