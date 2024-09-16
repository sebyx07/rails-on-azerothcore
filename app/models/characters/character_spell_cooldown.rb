# frozen_string_literal: true

# == Schema Information
#
# Table name: character_spell_cooldown
#
#  category                                 :integer          default(0), unsigned
#  guid(Global Unique Identifier, Low part) :integer          default(0), unsigned, not null, primary key
#  item(Item Identifier)                    :integer          default(0), unsigned, not null
#  needSend                                 :integer          default(1), unsigned, not null
#  spell(Spell Identifier)                  :integer          default(0), unsigned, not null, primary key
#  time                                     :integer          default(0), unsigned, not null
#
module Characters
  class CharacterSpellCooldown < CharactersApplicationRecord
    self.table_name = 'character_spell_cooldown'
    self.primary_key = %i[guid spell]
  end
end
