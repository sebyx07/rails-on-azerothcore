# frozen_string_literal: true

# == Schema Information
#
# Table name: battleground_template
#
#  AllianceStartLoc  :integer          unsigned
#  AllianceStartO    :float(24)        not null
#  Comment           :string(38)       not null
#  HordeStartLoc     :integer          unsigned
#  HordeStartO       :float(24)        not null
#  ID                :integer          default(0), unsigned, not null, primary key
#  MaxLvl            :integer          default(0), unsigned, not null
#  MaxPlayersPerTeam :integer          default(0), unsigned, not null
#  MinLvl            :integer          default(0), unsigned, not null
#  MinPlayersPerTeam :integer          default(0), unsigned, not null
#  ScriptName        :string(64)       default(""), not null
#  StartMaxDist      :float(24)        default(0.0), not null
#  Weight            :integer          default(1), unsigned, not null
#
module World
  class BattlegroundTemplate < WorldApplicationRecord
    self.table_name = 'battleground_template'
    self.primary_key = 'ID'
  end
end
