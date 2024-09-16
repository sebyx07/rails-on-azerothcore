# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_required
#
#  req_spell :integer          default(0), not null, primary key
#  spell_id  :integer          default(0), not null, primary key
#
module World
  class SpellRequired < WorldApplicationRecord
    self.table_name = 'spell_required'
    self.primary_key = %w[req_spell spell_id]
    belongs_to :spell, optional: true
  end
end
