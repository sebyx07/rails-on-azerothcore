# frozen_string_literal: true

# == Schema Information
#
# Table name: lfg_dungeon_template
#
#  VerifiedBuild                             :integer
#  dungeonId(Unique id from LFGDungeons.dbc) :integer          default(0), unsigned, not null, primary key
#  name                                      :string(255)
#  orientation                               :float(24)        default(0.0), not null
#  position_x                                :float(24)        default(0.0), not null
#  position_y                                :float(24)        default(0.0), not null
#  position_z                                :float(24)        default(0.0), not null
#
module World
  class LfgDungeonTemplate < WorldApplicationRecord
    self.table_name = 'lfg_dungeon_template'
  end
end
