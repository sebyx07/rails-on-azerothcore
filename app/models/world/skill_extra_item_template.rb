# frozen_string_literal: true

# == Schema Information
#
# Table name: skill_extra_item_template
#
#  additionalCreateChance(chance to create add)    :float(24)        default(0.0), not null
#  additionalMaxNum                                :integer          default(0), not null
#  requiredSpecialization(Specialization spell id) :integer          default(0), unsigned, not null
#  spellId(SpellId of the item creation spell)     :integer          default(0), unsigned, not null, primary key
#
module World
  class SkillExtraItemTemplate < WorldApplicationRecord
    self.table_name = 'skill_extra_item_template'
    self.primary_key = 'spellId'
  end
end
