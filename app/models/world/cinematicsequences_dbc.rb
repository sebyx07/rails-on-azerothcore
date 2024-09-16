# frozen_string_literal: true

# == Schema Information
#
# Table name: cinematicsequences_dbc
#
#  Camera_1 :integer          default(0), not null
#  Camera_2 :integer          default(0), not null
#  Camera_3 :integer          default(0), not null
#  Camera_4 :integer          default(0), not null
#  Camera_5 :integer          default(0), not null
#  Camera_6 :integer          default(0), not null
#  Camera_7 :integer          default(0), not null
#  Camera_8 :integer          default(0), not null
#  ID       :integer          default(0), not null, primary key
#  SoundID  :integer          default(0), not null
#
module World
  class CinematicsequencesDbc < WorldApplicationRecord
    self.table_name = 'cinematicsequences_dbc'
    self.primary_key = 'ID'
  end
end
