# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_linked_spell
#
#  comment       :text(65535)      not null
#  spell_effect  :integer          default(0), not null
#  spell_trigger :integer          not null
#  type          :integer          default(0), unsigned, not null
#
# Indexes
#
#  trigger_effect_type  (spell_trigger,spell_effect,type) UNIQUE
#
module World
  class SpellLinkedSpell < WorldApplicationRecord
    self.table_name = 'spell_linked_spell'
  end
end
