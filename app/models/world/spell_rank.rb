# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_ranks
#
#  rank           :integer          default(0), unsigned, not null, primary key
#  first_spell_id :integer          default(0), unsigned, not null, primary key
#  spell_id       :integer          default(0), unsigned, not null
#
# Indexes
#
#  spell_id  (spell_id) UNIQUE
#
module World
  class SpellRank < WorldApplicationRecord
    self.table_name = 'spell_ranks'
    self.primary_key = %w[rank first_spell_id]
    belongs_to :first_spell, optional: true
    belongs_to :spell, optional: true
  end
end
