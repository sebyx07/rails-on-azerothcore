# frozen_string_literal: true

# == Schema Information
#
# Table name: creaturespelldata_dbc
#
#  Availability_1 :integer          default(0), not null
#  Availability_2 :integer          default(0), not null
#  Availability_3 :integer          default(0), not null
#  Availability_4 :integer          default(0), not null
#  ID             :integer          default(0), not null, primary key
#  Spells_1       :integer          default(0), not null
#  Spells_2       :integer          default(0), not null
#  Spells_3       :integer          default(0), not null
#  Spells_4       :integer          default(0), not null
#
module World
  class CreaturespelldataDbc < WorldApplicationRecord
    self.table_name = 'creaturespelldata_dbc'
    self.primary_key = 'ID'
  end
end
