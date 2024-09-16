# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_classlevelstats
#
#  attackpower       :integer          default(0), unsigned, not null
#  basearmor         :integer          default(1), unsigned, not null
#  basehp0           :integer          default(1), unsigned, not null
#  basehp1           :integer          default(1), unsigned, not null
#  basehp2           :integer          default(1), unsigned, not null
#  basemana          :integer          default(0), unsigned, not null
#  class             :integer          unsigned, not null, primary key
#  comment           :text(65535)
#  damage_base       :float(24)        default(0.0), not null
#  damage_exp1       :float(24)        default(0.0), not null
#  damage_exp2       :float(24)        default(0.0), not null
#  level             :integer          unsigned, not null, primary key
#  rangedattackpower :integer          default(0), unsigned, not null
#
module World
  class CreatureClasslevelstat < WorldApplicationRecord
    self.table_name = 'creature_classlevelstats'
    self.primary_keys = %i[class level]
  end
end
