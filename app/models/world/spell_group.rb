# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_group
#
#  id           :integer          default(0), unsigned, not null, primary key
#  special_flag :integer          default(0), unsigned, not null
#  spell_id     :integer          default(0), unsigned, not null, primary key
#
module World
  class SpellGroup < WorldApplicationRecord
    self.table_name = 'spell_group'
    self.primary_key = ['id', 'spell_id']
    belongs_to :spell, optional: true
  end
end
