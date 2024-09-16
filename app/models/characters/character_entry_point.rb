# frozen_string_literal: true

# == Schema Information
#
# Table name: character_entry_point
#
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  joinMapId(Map Identifier)      :integer          default(0), unsigned, not null
#  joinO                          :float(24)        default(0.0), not null
#  joinX                          :float(24)        default(0.0), not null
#  joinY                          :float(24)        default(0.0), not null
#  joinZ                          :float(24)        default(0.0), not null
#  mountSpell                     :integer          default(0), unsigned, not null
#  taxiPath0                      :integer          default(0), unsigned, not null
#  taxiPath1                      :integer          default(0), unsigned, not null
#
module Characters
  class CharacterEntryPoint < CharactersApplicationRecord
    self.table_name = 'character_entry_point'
    self.primary_key = :guid
  end
end
