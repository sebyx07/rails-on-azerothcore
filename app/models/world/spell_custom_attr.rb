# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_custom_attr
#
#  attributes(SpellCustomAttributes) :integer          default(0), unsigned, not null
#  spell_id(spell id)                :integer          default(0), unsigned, not null, primary key
#
module World
  class SpellCustomAttr < WorldApplicationRecord
    self.table_name = 'spell_custom_attr'
    self.primary_key = 'spell_id'
  end
end
