# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_template_model
#
#  CreatureDisplayID :integer          unsigned, not null
#  CreatureID        :integer          unsigned, not null, primary key
#  DisplayScale      :float(24)        default(1.0), not null
#  Idx               :integer          default(0), unsigned, not null, primary key
#  Probability       :float(24)        default(0.0), not null
#  VerifiedBuild     :integer          unsigned
#
module World
  class CreatureTemplateModel < WorldApplicationRecord
    self.table_name = 'creature_template_model'
    self.primary_key = %i[CreatureID Idx]
  end
end
