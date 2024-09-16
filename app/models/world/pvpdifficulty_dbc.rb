# frozen_string_literal: true

# == Schema Information
#
# Table name: pvpdifficulty_dbc
#
#  Difficulty :integer          default(0), not null
#  ID         :integer          default(0), not null, primary key
#  MapID      :integer          default(0), not null
#  MaxLevel   :integer          default(0), not null
#  MinLevel   :integer          default(0), not null
#  RangeIndex :integer          default(0), not null
#
module World
  class PvpdifficultyDbc < WorldApplicationRecord
    self.table_name = 'pvpdifficulty_dbc'
    self.primary_key = 'ID'
  end
end
