# frozen_string_literal: true

# == Schema Information
#
# Table name: scalingstatvalues_dbc
#
#  Charlevel            :integer          default(0), not null
#  ClothChestArmor      :integer          default(0), not null
#  ClothCloakArmor      :integer          default(0), not null
#  ClothShoulderArmor   :integer          default(0), not null
#  ID                   :integer          default(0), not null, primary key
#  LeatherChestArmor    :integer          default(0), not null
#  LeatherShoulderArmor :integer          default(0), not null
#  MailChestArmor       :integer          default(0), not null
#  MailShoulderArmor    :integer          default(0), not null
#  PlateChestArmor      :integer          default(0), not null
#  PlateShoulderArmor   :integer          default(0), not null
#  PrimaryBudget        :integer          default(0), not null
#  RangedBudget         :integer          default(0), not null
#  RangedDPS            :integer          default(0), not null
#  ShoulderBudget       :integer          default(0), not null
#  SpellPower           :integer          default(0), not null
#  SpellcasterDPS1H     :integer          default(0), not null
#  SpellcasterDPS2H     :integer          default(0), not null
#  TertiaryBudget       :integer          default(0), not null
#  TrinketBudget        :integer          default(0), not null
#  WandDPS              :integer          default(0), not null
#  WeaponBudget1H       :integer          default(0), not null
#  WeaponDPS1H          :integer          default(0), not null
#  WeaponDPS2H          :integer          default(0), not null
#
module World
  class ScalingstatvaluesDbc < WorldApplicationRecord
    self.table_name = 'scalingstatvalues_dbc'
    self.primary_key = 'ID'
  end
end
