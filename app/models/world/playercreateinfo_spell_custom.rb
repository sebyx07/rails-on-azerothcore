# frozen_string_literal: true

# == Schema Information
#
# Table name: playercreateinfo_spell_custom
#
#  Note      :string(255)
#  Spell     :integer          default(0), unsigned, not null, primary key
#  classmask :integer          default(0), unsigned, not null, primary key
#  racemask  :integer          default(0), unsigned, not null, primary key
#
module World
  class PlayercreateinfoSpellCustom < WorldApplicationRecord
    self.table_name = 'playercreateinfo_spell_custom'
    self.primary = [:racemask, :classmask, :spell]
  end
end
