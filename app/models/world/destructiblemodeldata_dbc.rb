# frozen_string_literal: true

# == Schema Information
#
# Table name: destructiblemodeldata_dbc
#
#  Field17                     :integer          default(0), not null
#  Field18                     :integer          default(0), not null
#  ID                          :integer          default(0), not null, primary key
#  State0AmbientDoodadSet      :integer          default(0), not null
#  State0DestructionDoodadSet  :integer          default(0), not null
#  State0ImpactEffectDoodadSet :integer          default(0), not null
#  State0Wmo                   :integer          default(0), not null
#  State1AmbientDoodadSet      :integer          default(0), not null
#  State1DestructionDoodadSet  :integer          default(0), not null
#  State1ImpactEffectDoodadSet :integer          default(0), not null
#  State1Wmo                   :integer          default(0), not null
#  State2AmbientDoodadSet      :integer          default(0), not null
#  State2DestructionDoodadSet  :integer          default(0), not null
#  State2ImpactEffectDoodadSet :integer          default(0), not null
#  State2Wmo                   :integer          default(0), not null
#  State3AmbientDoodadSet      :integer          default(0), not null
#  State3DestructionDoodadSet  :integer          default(0), not null
#  State3ImpactEffectDoodadSet :integer          default(0), not null
#  State3Wmo                   :integer          default(0), not null
#
module World
  class DestructiblemodeldataDbc < WorldApplicationRecord
    self.table_name = 'destructiblemodeldata_dbc'
    self.primary_key = 'ID'
  end
end
