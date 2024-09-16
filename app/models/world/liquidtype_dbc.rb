# frozen_string_literal: true

# == Schema Information
#
# Table name: liquidtype_dbc
#
#  AmbDarkenintensity :float(24)        default(0.0), not null
#  Color_1            :integer          default(0), not null
#  Color_2            :integer          default(0), not null
#  DirDarkenintensity :float(24)        default(0.0), not null
#  Flags              :integer          default(0), not null
#  Float_1            :float(24)        default(0.0), not null
#  Float_10           :float(24)        default(0.0), not null
#  Float_11           :float(24)        default(0.0), not null
#  Float_12           :float(24)        default(0.0), not null
#  Float_13           :float(24)        default(0.0), not null
#  Float_14           :float(24)        default(0.0), not null
#  Float_15           :float(24)        default(0.0), not null
#  Float_16           :float(24)        default(0.0), not null
#  Float_17           :float(24)        default(0.0), not null
#  Float_18           :float(24)        default(0.0), not null
#  Float_2            :float(24)        default(0.0), not null
#  Float_3            :float(24)        default(0.0), not null
#  Float_4            :float(24)        default(0.0), not null
#  Float_5            :float(24)        default(0.0), not null
#  Float_6            :float(24)        default(0.0), not null
#  Float_7            :float(24)        default(0.0), not null
#  Float_8            :float(24)        default(0.0), not null
#  Float_9            :float(24)        default(0.0), not null
#  FogDarkenintensity :float(24)        default(0.0), not null
#  ID                 :integer          default(0), not null, primary key
#  Int_1              :integer          default(0), not null
#  Int_2              :integer          default(0), not null
#  Int_3              :integer          default(0), not null
#  Int_4              :integer          default(0), not null
#  LightID            :integer          default(0), not null
#  MaterialID         :integer          default(0), not null
#  MaxDarkenDepth     :float(24)        default(0.0), not null
#  Name               :string(100)
#  ParticleMovement   :integer          default(0), not null
#  ParticleScale      :float(24)        default(0.0), not null
#  ParticleTexSlots   :integer          default(0), not null
#  SoundID            :integer          default(0), not null
#  SpellID            :integer          default(0), not null
#  Texture_1          :string(100)
#  Texture_2          :string(100)
#  Texture_3          :string(100)
#  Texture_4          :string(100)
#  Texture_5          :string(100)
#  Texture_6          :string(100)
#  Type               :integer          default(0), not null
#
module World
  class LiquidtypeDbc < WorldApplicationRecord
    self.table_name = 'liquidtype_dbc'
    self.primary_key = :ID
  end
end
