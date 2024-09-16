# frozen_string_literal: true

# == Schema Information
#
# Table name: player_class_stats
#
#  Agility   :integer          default(0), unsigned, not null
#  BaseHP    :integer          default(1), unsigned, not null
#  BaseMana  :integer          default(1), unsigned, not null
#  Class     :integer          unsigned, not null, primary key
#  Intellect :integer          default(0), unsigned, not null
#  Level     :integer          unsigned, not null, primary key
#  Spirit    :integer          default(0), unsigned, not null
#  Stamina   :integer          default(0), unsigned, not null
#  Strength  :integer          default(0), unsigned, not null
#
module World
  class PlayerClassStat < WorldApplicationRecord
    self.table_name = 'player_class_stats'
    self.primary_key = :Class, :Level
  end
end
