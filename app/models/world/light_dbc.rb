# frozen_string_literal: true

# == Schema Information
#
# Table name: light_dbc
#
#  ContinentID     :integer          default(0), not null
#  FalloffEnd      :float(24)        default(0.0), not null
#  FalloffStart    :float(24)        default(0.0), not null
#  ID              :integer          default(0), not null, primary key
#  LightParamsID_1 :integer          default(0), not null
#  LightParamsID_2 :integer          default(0), not null
#  LightParamsID_3 :integer          default(0), not null
#  LightParamsID_4 :integer          default(0), not null
#  LightParamsID_5 :integer          default(0), not null
#  LightParamsID_6 :integer          default(0), not null
#  LightParamsID_7 :integer          default(0), not null
#  LightParamsID_8 :integer          default(0), not null
#  X               :float(24)        default(0.0), not null
#  Y               :float(24)        default(0.0), not null
#  Z               :float(24)        default(0.0), not null
#
module World
  class LightDbc < WorldApplicationRecord
    self.table_name = 'light_dbc'
    self.primary_key = :ID
  end
end
