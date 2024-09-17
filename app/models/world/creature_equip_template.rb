# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_equip_template
#
#  CreatureID    :integer          default(0), unsigned, not null, primary key
#  ID            :integer          default(1), unsigned, not null, primary key
#  ItemID1       :integer          default(0), unsigned, not null
#  ItemID2       :integer          default(0), unsigned, not null
#  ItemID3       :integer          default(0), unsigned, not null
#  VerifiedBuild :integer
#
module World
  class CreatureEquipTemplate < WorldApplicationRecord
    self.table_name = 'creature_equip_template'
    self.primary_key = %i[CreatureID ID]
  end
end
