# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_enchant_proc_data
#
#  PPMChance     :float(24)        default(0.0), not null
#  attributeMask :integer          default(0), unsigned, not null
#  customChance  :integer          default(0), unsigned, not null
#  entry         :integer          unsigned, not null, primary key
#  procEx        :integer          default(0), unsigned, not null
#
module World
  class SpellEnchantProcDatum < WorldApplicationRecord
    self.table_name = 'spell_enchant_proc_data'
    self.primary_key = 'entry'
  end
end
