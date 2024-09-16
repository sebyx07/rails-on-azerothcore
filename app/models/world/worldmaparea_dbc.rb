# frozen_string_literal: true

# == Schema Information
#
# Table name: worldmaparea_dbc
#
#  AreaID              :integer          default(0), not null
#  AreaName            :string(100)
#  DefaultDungeonFloor :integer          default(0), not null
#  DisplayMapID        :integer          default(0), not null
#  ID                  :integer          default(0), not null, primary key
#  LocBottom           :float(24)        default(0.0), not null
#  LocLeft             :float(24)        default(0.0), not null
#  LocRight            :float(24)        default(0.0), not null
#  LocTop              :float(24)        default(0.0), not null
#  MapID               :integer          default(0), not null
#  ParentWorldMapID    :integer          default(0), not null
#
module World
  class WorldmapareaDbc < WorldApplicationRecord
    self.table_name = 'worldmaparea_dbc'
    self.primary_key = 'ID'
  end
end
