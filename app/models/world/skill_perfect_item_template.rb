# frozen_string_literal: true

# == Schema Information
#
# Table name: skill_perfect_item_template
#
#  perfectCreateChance(chance to create the perfect item instead) :float(24)        default(0.0), not null
#  perfectItemType(perfect item type to create instead)           :integer          default(0), unsigned, not null
#  requiredSpecialization(Specialization spell id)                :integer          default(0), unsigned, not null
#  spellId(SpellId of the item creation spell)                    :integer          default(0), unsigned, not null, primary key
#
module World
  class SkillPerfectItemTemplate < WorldApplicationRecord
    self.table_name = 'skill_perfect_item_template'
    self.primary_key = 'spellId'
  end
end
