# frozen_string_literal: true

# == Schema Information
#
# Table name: spellrunecost_dbc
#
#  Blood      :integer          default(0), not null
#  Frost      :integer          default(0), not null
#  ID         :integer          default(0), not null, primary key
#  RunicPower :integer          default(0), not null
#  Unholy     :integer          default(0), not null
#
module World
  class SpellrunecostDbc < WorldApplicationRecord
    self.table_name = 'spellrunecost_dbc'
    self.primary_key = 'ID'
  end
end
