# frozen_string_literal: true

# == Schema Information
#
# Table name: durabilitycosts_dbc
#
#  ArmorSubClassCost_1   :integer          default(0), not null
#  ArmorSubClassCost_2   :integer          default(0), not null
#  ArmorSubClassCost_3   :integer          default(0), not null
#  ArmorSubClassCost_4   :integer          default(0), not null
#  ArmorSubClassCost_5   :integer          default(0), not null
#  ArmorSubClassCost_6   :integer          default(0), not null
#  ArmorSubClassCost_7   :integer          default(0), not null
#  ArmorSubClassCost_8   :integer          default(0), not null
#  ID                    :integer          default(0), not null, primary key
#  WeaponSubClassCost_1  :integer          default(0), not null
#  WeaponSubClassCost_10 :integer          default(0), not null
#  WeaponSubClassCost_11 :integer          default(0), not null
#  WeaponSubClassCost_12 :integer          default(0), not null
#  WeaponSubClassCost_13 :integer          default(0), not null
#  WeaponSubClassCost_14 :integer          default(0), not null
#  WeaponSubClassCost_15 :integer          default(0), not null
#  WeaponSubClassCost_16 :integer          default(0), not null
#  WeaponSubClassCost_17 :integer          default(0), not null
#  WeaponSubClassCost_18 :integer          default(0), not null
#  WeaponSubClassCost_19 :integer          default(0), not null
#  WeaponSubClassCost_2  :integer          default(0), not null
#  WeaponSubClassCost_20 :integer          default(0), not null
#  WeaponSubClassCost_21 :integer          default(0), not null
#  WeaponSubClassCost_3  :integer          default(0), not null
#  WeaponSubClassCost_4  :integer          default(0), not null
#  WeaponSubClassCost_5  :integer          default(0), not null
#  WeaponSubClassCost_6  :integer          default(0), not null
#  WeaponSubClassCost_7  :integer          default(0), not null
#  WeaponSubClassCost_8  :integer          default(0), not null
#  WeaponSubClassCost_9  :integer          default(0), not null
#
module World
  class DurabilitycostsDbc < WorldApplicationRecord
    self.table_name = 'durabilitycosts_dbc'
    self.primary_key = 'ID'
  end
end
