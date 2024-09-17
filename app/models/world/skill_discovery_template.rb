# frozen_string_literal: true

# == Schema Information
#
# Table name: skill_discovery_template
#
#  chance(chance to discover)                 :float(24)        default(0.0), not null
#  reqSkillValue(skill points requirement)    :integer          default(0), unsigned, not null
#  reqSpell(spell requirement)                :integer          default(0), unsigned, not null, primary key
#  spellId(SpellId of the discoverable spell) :integer          default(0), unsigned, not null, primary key
#
module World
  class SkillDiscoveryTemplate < WorldApplicationRecord
    self.table_name = 'skill_discovery_template'
    self.primary_key = %i[reqSpell spellId]
  end
end
