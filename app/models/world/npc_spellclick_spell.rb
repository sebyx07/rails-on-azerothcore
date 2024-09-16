# frozen_string_literal: true

# == Schema Information
#
# Table name: npc_spellclick_spells
#
#  cast_flags(first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit) :integer          unsigned, not null
#  npc_entry(reference to creature_template)                                                                         :integer          unsigned, not null, primary key
#  user_type(relation with summoner: 0-no 1-friendly 2-raid 3-party player can click)                                :integer          default(0), unsigned, not null
#  spell_id(spell which should be casted )                                                                           :integer          unsigned, not null, primary key
#
module World
  class NpcSpellclickSpell < WorldApplicationRecord
    self.table_name = 'npc_spellclick_spells'
    self.primary_key = %w[npc_entry spell_id]
    belongs_to :spell, optional: true
  end
end
