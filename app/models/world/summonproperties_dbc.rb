# frozen_string_literal: true

# == Schema Information
#
# Table name: summonproperties_dbc
#
#  Control :integer          default(0), not null
#  Faction :integer          default(0), not null
#  Flags   :integer          default(0), not null
#  ID      :integer          default(0), not null, primary key
#  Slot    :integer          default(0), not null
#  Title   :integer          default(0), not null
#
module World
  class SummonpropertiesDbc < WorldApplicationRecord
    self.table_name = 'summonproperties_dbc'
    self.primary_key = 'ID'
  end
end
