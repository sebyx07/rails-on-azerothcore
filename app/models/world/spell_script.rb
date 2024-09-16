# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_scripts
#
#  id        :integer          default(0), unsigned, not null
#  command   :integer          default(0), unsigned, not null
#  dataint   :integer          default(0), not null
#  datalong  :integer          default(0), unsigned, not null
#  datalong2 :integer          default(0), unsigned, not null
#  delay     :integer          default(0), unsigned, not null
#  effIndex  :integer          default(0), unsigned, not null
#  o         :float(24)        default(0.0), not null
#  x         :float(24)        default(0.0), not null
#  y         :float(24)        default(0.0), not null
#  z         :float(24)        default(0.0), not null
#
module World
  class SpellScript < WorldApplicationRecord
    self.table_name = 'spell_scripts'
  end
end
