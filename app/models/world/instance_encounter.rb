# frozen_string_literal: true

# == Schema Information
#
# Table name: instance_encounters
#
#  comment                                                                                       :string(255)      default(""), not null
#  creditEntry                                                                                   :integer          default(0), unsigned, not null
#  creditType                                                                                    :integer          default(0), unsigned, not null
#  entry(Unique entry from DungeonEncounter.dbc)                                                 :integer          unsigned, not null, primary key
#  lastEncounterDungeon(If not 0, LfgDungeon.dbc entry for the instance it is last encounter in) :integer          default(0), unsigned, not null
#
module World
  class InstanceEncounter < WorldApplicationRecord
    self.table_name = 'instance_encounters'
    self.primary_key = :entry
  end
end
