# frozen_string_literal: true

# == Schema Information
#
# Table name: playercreateinfo_cast_spell
#
#  classMask :integer          default(0), unsigned, not null, primary key
#  note      :string(255)
#  raceMask  :integer          default(0), unsigned, not null, primary key
#  spell     :integer          default(0), unsigned, not null, primary key
#
module World
  class PlayercreateinfoCastSpell < WorldApplicationRecord
    self.table_name = 'playercreateinfo_cast_spell'
    self.primary_key = [:raceMask, :classMask, :spell]
  end
end
