# frozen_string_literal: true

# == Schema Information
#
# Table name: pet_levelstats
#
#  agi            :integer          default(0), unsigned, not null
#  armor          :integer          default(0), unsigned, not null
#  creature_entry :integer          unsigned, not null, primary key
#  hp             :integer          default(0), unsigned, not null
#  inte           :integer          default(0), unsigned, not null
#  level          :integer          unsigned, not null, primary key
#  mana           :integer          default(0), unsigned, not null
#  max_dmg        :integer          default(0), unsigned, not null
#  min_dmg        :integer          default(0), unsigned, not null
#  spi            :integer          default(0), unsigned, not null
#  sta            :integer          default(0), unsigned, not null
#  str            :integer          default(0), unsigned, not null
#
module World
  class PetLevelstat < WorldApplicationRecord
    self.table_name = 'pet_levelstats'
    self.primary_key = [:creature_entry, :level]
  end
end
