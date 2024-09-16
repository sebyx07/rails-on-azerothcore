# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_onkill_reputation
#
#  IsTeamAward1                     :integer          default(0), not null
#  IsTeamAward2                     :integer          default(0), not null
#  MaxStanding1                     :integer          default(0), not null
#  MaxStanding2                     :integer          default(0), not null
#  RewOnKillRepFaction1             :integer          default(0), not null
#  RewOnKillRepFaction2             :integer          default(0), not null
#  RewOnKillRepValue1               :float(24)        default(0.0), not null
#  RewOnKillRepValue2               :float(24)        default(0.0), not null
#  TeamDependent                    :integer          default(0), unsigned, not null
#  creature_id(Creature Identifier) :integer          default(0), unsigned, not null, primary key
#
module World
  class CreatureOnkillReputation < WorldApplicationRecord
    self.table_name = 'creature_onkill_reputation'
    self.primary_key = 'creature_id'
  end
end
