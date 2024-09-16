# frozen_string_literal: true

# == Schema Information
#
# Table name: creaturedisplayinfo_dbc
#
#  BloodID               :integer          default(0), not null
#  BloodLevel            :integer          default(0), not null
#  CreatureGeosetData    :integer          default(0), not null
#  CreatureModelAlpha    :integer          default(0), not null
#  CreatureModelScale    :float(24)        default(0.0), not null
#  ExtendedDisplayInfoID :integer          default(0), not null
#  ID                    :integer          default(0), not null, primary key
#  ModelID               :integer          default(0), not null
#  NPCSoundID            :integer          default(0), not null
#  ObjectEffectPackageID :integer          default(0), not null
#  ParticleColorID       :integer          default(0), not null
#  PortraitTextureName   :string(100)
#  SoundID               :integer          default(0), not null
#  TextureVariation_1    :string(100)
#  TextureVariation_2    :string(100)
#  TextureVariation_3    :string(100)
#
module World
  class CreaturedisplayinfoDbc < WorldApplicationRecord
    self.table_name = 'creaturedisplayinfo_dbc'
    self.primary_key = 'ID'
  end
end
