# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_template_spell
#
#  CreatureID    :integer          unsigned, not null, primary key
#  Index         :integer          default(0), unsigned, not null, primary key
#  Spell         :integer          unsigned
#  VerifiedBuild :integer
#
module World
  class CreatureTemplateSpell < WorldApplicationRecord
    self.table_name = 'creature_template_spell'
    self.primary_key = %i[CreatureID Index]
  end
end
