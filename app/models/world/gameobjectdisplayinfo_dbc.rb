# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobjectdisplayinfo_dbc
#
#  GeoBoxMaxX            :float(24)        default(0.0), not null
#  GeoBoxMaxY            :float(24)        default(0.0), not null
#  GeoBoxMaxZ            :float(24)        default(0.0), not null
#  GeoBoxMinX            :float(24)        default(0.0), not null
#  GeoBoxMinY            :float(24)        default(0.0), not null
#  GeoBoxMinZ            :float(24)        default(0.0), not null
#  ID                    :integer          default(0), not null, primary key
#  ModelName             :string(200)
#  ObjectEffectPackageID :integer          default(0), not null
#  Sound_1               :integer          default(0), not null
#  Sound_10              :integer          default(0), not null
#  Sound_2               :integer          default(0), not null
#  Sound_3               :integer          default(0), not null
#  Sound_4               :integer          default(0), not null
#  Sound_5               :integer          default(0), not null
#  Sound_6               :integer          default(0), not null
#  Sound_7               :integer          default(0), not null
#  Sound_8               :integer          default(0), not null
#  Sound_9               :integer          default(0), not null
#
module World
  class GameobjectdisplayinfoDbc < WorldApplicationRecord
    self.table_name = 'gameobjectdisplayinfo_dbc'
    self.primary_key = 'ID'
  end
end
