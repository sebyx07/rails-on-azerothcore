# frozen_string_literal: true

# == Schema Information
#
# Table name: spellcasttimes_dbc
#
#  Base     :integer          default(0), not null
#  ID       :integer          default(0), not null, primary key
#  Minimum  :integer          default(0), not null
#  PerLevel :integer          default(0), not null
#
module World
  class SpellcasttimesDbc < WorldApplicationRecord
    self.table_name = 'spellcasttimes_dbc'
    self.primary_key = 'ID'
  end
end
