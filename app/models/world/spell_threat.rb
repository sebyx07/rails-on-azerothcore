# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_threat
#
#  apPctMod(additional threat bonus from attack power) :float(24)        default(0.0), not null
#  entry                                               :integer          unsigned, not null, primary key
#  flatMod                                             :integer
#  pctMod(threat multiplier for damage/healing)        :float(24)        default(1.0), not null
#
module World
  class SpellThreat < WorldApplicationRecord
    self.table_name = 'spell_threat'
    self.primary_key = 'entry'
  end
end
