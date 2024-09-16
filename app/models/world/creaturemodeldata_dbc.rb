# frozen_string_literal: true

# == Schema Information
#
# Table name: creaturemodeldata_dbc
#
#  AttachedEffectScale    :float(24)        default(0.0), not null
#  BloodID                :integer          default(0), not null
#  CollisionHeight        :float(24)        default(0.0), not null
#  CollisionWidth         :float(24)        default(0.0), not null
#  DeathThudShakeSize     :integer          default(0), not null
#  Flags                  :integer          default(0), not null
#  FoleyMaterialID        :integer          default(0), not null
#  FootprintParticleScale :float(24)        default(0.0), not null
#  FootprintTextureID     :integer          default(0), not null
#  FootprintTextureLength :float(24)        default(0.0), not null
#  FootprintTextureWidth  :float(24)        default(0.0), not null
#  FootstepShakeSize      :integer          default(0), not null
#  GeoBoxMaxX             :float(24)        default(0.0), not null
#  GeoBoxMaxY             :float(24)        default(0.0), not null
#  GeoBoxMaxZ             :float(24)        default(0.0), not null
#  GeoBoxMinX             :float(24)        default(0.0), not null
#  GeoBoxMinY             :float(24)        default(0.0), not null
#  GeoBoxMinZ             :float(24)        default(0.0), not null
#  ID                     :integer          default(0), not null, primary key
#  MissileCollisionPush   :float(24)        default(0.0), not null
#  MissileCollisionRadius :float(24)        default(0.0), not null
#  MissileCollisionRaise  :float(24)        default(0.0), not null
#  ModelName              :string(100)
#  ModelScale             :float(24)        default(0.0), not null
#  MountHeight            :float(24)        default(0.0), not null
#  SizeClass              :integer          default(0), not null
#  SoundID                :integer          default(0), not null
#  WorldEffectScale       :float(24)        default(0.0), not null
#
module World
  class CreaturemodeldataDbc < WorldApplicationRecord
    self.table_name = 'creaturemodeldata_dbc'
    self.primary_key = 'ID'
  end
end
