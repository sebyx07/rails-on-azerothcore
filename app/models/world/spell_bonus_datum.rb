# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_bonus_data
#
#  ap_bonus     :float(24)        default(0.0), not null
#  ap_dot_bonus :float(24)        default(0.0), not null
#  comments     :string(255)
#  direct_bonus :float(24)        default(0.0), not null
#  dot_bonus    :float(24)        default(0.0), not null
#  entry        :integer          default(0), unsigned, not null, primary key
#
module World
  class SpellBonusDatum < WorldApplicationRecord
    self.table_name = 'spell_bonus_data'
    self.primary_key = 'entry'
  end
end
