# frozen_string_literal: true

# == Schema Information
#
# Table name: game_weather
#
#  ScriptName          :string(64)       default(""), not null
#  fall_rain_chance    :integer          default(25), unsigned, not null
#  fall_snow_chance    :integer          default(25), unsigned, not null
#  fall_storm_chance   :integer          default(25), unsigned, not null
#  spring_rain_chance  :integer          default(25), unsigned, not null
#  spring_snow_chance  :integer          default(25), unsigned, not null
#  spring_storm_chance :integer          default(25), unsigned, not null
#  summer_rain_chance  :integer          default(25), unsigned, not null
#  summer_snow_chance  :integer          default(25), unsigned, not null
#  summer_storm_chance :integer          default(25), unsigned, not null
#  winter_rain_chance  :integer          default(25), unsigned, not null
#  winter_snow_chance  :integer          default(25), unsigned, not null
#  winter_storm_chance :integer          default(25), unsigned, not null
#  zone                :integer          default(0), unsigned, not null, primary key
#
module World
  class GameWeather < WorldApplicationRecord
    self.table_name = 'game_weather'
    self.primary_key = 'zone'
  end
end
