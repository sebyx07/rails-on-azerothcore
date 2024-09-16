# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_mixology
#
#  entry                    :integer          unsigned, not null, primary key
#  pctMod(bonus multiplier) :float(24)        default(30.0), not null
#
module World
  class SpellMixology < WorldApplicationRecord
    self.table_name = 'spell_mixology'
    self.primary_key = 'entry'
  end
end
