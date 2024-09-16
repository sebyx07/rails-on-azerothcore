# frozen_string_literal: true

# == Schema Information
#
# Table name: itemdisplayinfo_dbc
#
#  Flags             :integer          default(0), not null
#  GeosetGroup_1     :integer          default(0), not null
#  GeosetGroup_2     :integer          default(0), not null
#  GeosetGroup_3     :integer          default(0), not null
#  GroupSoundIndex   :integer          default(0), not null
#  HelmetGeosetVis_1 :integer          default(0), not null
#  HelmetGeosetVis_2 :integer          default(0), not null
#  ID                :integer          default(0), not null, primary key
#  InventoryIcon_1   :string(100)
#  InventoryIcon_2   :string(100)
#  ItemVisual        :integer          default(0), not null
#  ModelName_1       :string(100)
#  ModelName_2       :string(100)
#  ModelTexture_1    :string(100)
#  ModelTexture_2    :string(100)
#  ParticleColorID   :integer          default(0), not null
#  SpellVisualID     :integer          default(0), not null
#  Texture_1         :string(100)
#  Texture_2         :string(100)
#  Texture_3         :string(100)
#  Texture_4         :string(100)
#  Texture_5         :string(100)
#  Texture_6         :string(100)
#  Texture_7         :string(100)
#  Texture_8         :string(100)
#
module World
  class ItemdisplayinfoDbc < WorldApplicationRecord
    self.table_name = 'itemdisplayinfo_dbc'
    self.primary_key = :ID
  end
end
