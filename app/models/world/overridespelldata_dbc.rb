# frozen_string_literal: true

# == Schema Information
#
# Table name: overridespelldata_dbc
#
#  Flags     :integer          default(0), not null
#  ID        :integer          default(0), not null, primary key
#  Spells_1  :integer          default(0), not null
#  Spells_10 :integer          default(0), not null
#  Spells_2  :integer          default(0), not null
#  Spells_3  :integer          default(0), not null
#  Spells_4  :integer          default(0), not null
#  Spells_5  :integer          default(0), not null
#  Spells_6  :integer          default(0), not null
#  Spells_7  :integer          default(0), not null
#  Spells_8  :integer          default(0), not null
#  Spells_9  :integer          default(0), not null
#
module World
  class OverridespelldataDbc < WorldApplicationRecord
    self.table_name = 'overridespelldata_dbc'
    self.primary_key = 'ID'
  end
end
