# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_proc
#
#  AttributesMask   :integer          default(0), unsigned, not null
#  Chance           :float(24)        default(0.0), not null
#  Charges          :integer          default(0), unsigned, not null
#  Cooldown         :integer          default(0), unsigned, not null
#  HitMask          :integer          default(0), unsigned, not null
#  ProcFlags        :integer          default(0), unsigned, not null
#  ProcsPerMinute   :float(24)        default(0.0), not null
#  SchoolMask       :integer          default(0), unsigned, not null
#  SpellFamilyMask0 :integer          default(0), unsigned, not null
#  SpellFamilyMask1 :integer          default(0), unsigned, not null
#  SpellFamilyMask2 :integer          default(0), unsigned, not null
#  SpellFamilyName  :integer          default(0), unsigned, not null
#  SpellId          :integer          default(0), not null, primary key
#  SpellPhaseMask   :integer          default(0), unsigned, not null
#  SpellTypeMask    :integer          default(0), unsigned, not null
#
module World
  class SpellProc < WorldApplicationRecord
    self.table_name = 'spell_proc'
    self.primary_key = 'SpellId'
  end
end
