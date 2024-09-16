# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_script_names
#
#  ScriptName :string(64)       not null
#  spell_id   :integer          not null
#
# Indexes
#
#  spell_id  (spell_id,ScriptName) UNIQUE
#
module World
  class SpellScriptName < WorldApplicationRecord
    self.table_name = 'spell_script_names'
    belongs_to :spell, optional: true
  end
end
