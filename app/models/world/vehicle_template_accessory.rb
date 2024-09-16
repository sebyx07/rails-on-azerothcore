# frozen_string_literal: true

# == Schema Information
#
# Table name: vehicle_template_accessory
#
#  accessory_entry                                           :integer          default(0), unsigned, not null
#  description                                               :text(65535)      not null
#  entry                                                     :integer          default(0), unsigned, not null, primary key
#  minion                                                    :integer          default(0), unsigned, not null
#  summontimer(timer, only relevant for certain summontypes) :integer          default(30000), unsigned, not null
#  summontype(see enum TempSummonType)                       :integer          default(6), unsigned, not null
#  seat_id                                                   :integer          default(0), not null
#
module World
  class VehicleTemplateAccessory < WorldApplicationRecord
    self.table_name = 'vehicle_template_accessory'
    self.primary_key = 'entry'
  end
end
