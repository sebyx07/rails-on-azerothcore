# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_template_resistance
#
#  CreatureID    :integer          unsigned, not null, primary key
#  Resistance    :integer
#  School        :integer          unsigned, not null, primary key
#  VerifiedBuild :integer
#
module World
  class CreatureTemplateResistance < WorldApplicationRecord
    self.table_name = 'creature_template_resistance'
    self.primary_key = %i[CreatureID School]
  end
end
