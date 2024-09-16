# frozen_string_literal: true

# == Schema Information
#
# Table name: item_enchantment_template
#
#  chance :float(24)        default(0.0), not null
#  ench   :integer          default(0), unsigned, not null, primary key
#  entry  :integer          default(0), unsigned, not null, primary key
#
module World
  class ItemEnchantmentTemplate < WorldApplicationRecord
    self.table_name = 'item_enchantment_template'
    self.primary_key = [:ench, :entry]
  end
end
