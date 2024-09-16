# frozen_string_literal: true

# == Schema Information
#
# Table name: character_banned
#
#  active                         :integer          default(1), unsigned, not null
#  bandate                        :integer          default(0), unsigned, not null, primary key
#  bannedby                       :string(50)       not null
#  banreason                      :string(255)      not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  unbandate                      :integer          default(0), unsigned, not null
#
module Characters
  class CharacterBanned < CharactersApplicationRecord
    self.table_name = 'character_banned'
    self.primary_key = %i[guid bandate]
  end
end
