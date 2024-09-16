# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_proc_event
#
#  Cooldown         :integer          default(0), unsigned, not null
#  CustomChance     :float(24)        default(0.0), not null
#  SchoolMask       :integer          default(0), not null
#  SpellFamilyMask0 :integer          default(0), unsigned, not null
#  SpellFamilyMask1 :integer          default(0), unsigned, not null
#  SpellFamilyMask2 :integer          default(0), unsigned, not null
#  SpellFamilyName  :integer          default(0), unsigned, not null
#  entry            :integer          default(0), not null, primary key
#  ppmRate          :float(24)        default(0.0), not null
#  procEx           :integer          default(0), unsigned, not null
#  procFlags        :integer          default(0), unsigned, not null
#  procPhase        :integer          default(0), unsigned, not null
#
module World
  class SpellProcEvent < WorldApplicationRecord
    self.table_name = 'spell_proc_event'
    self.primary_key = 'entry'
  end
end
