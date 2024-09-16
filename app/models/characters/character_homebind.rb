# frozen_string_literal: true

# == Schema Information
#
# Table name: character_homebind
#
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  mapId(Map Identifier)          :integer          default(0), unsigned, not null
#  posX                           :float(24)        default(0.0), not null
#  posY                           :float(24)        default(0.0), not null
#  posZ                           :float(24)        default(0.0), not null
#  zoneId(Zone Identifier)        :integer          default(0), unsigned, not null
#
module Characters
  class CharacterHomebind < CharactersApplicationRecord
    self.table_name = 'character_homebind'
    self.primary_key = :guid
  end
end
