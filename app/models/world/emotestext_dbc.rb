# frozen_string_literal: true

# == Schema Information
#
# Table name: emotestext_dbc
#
#  EmoteID      :integer          default(0), not null
#  EmoteText_1  :integer          default(0), not null
#  EmoteText_10 :integer          default(0), not null
#  EmoteText_11 :integer          default(0), not null
#  EmoteText_12 :integer          default(0), not null
#  EmoteText_13 :integer          default(0), not null
#  EmoteText_14 :integer          default(0), not null
#  EmoteText_15 :integer          default(0), not null
#  EmoteText_16 :integer          default(0), not null
#  EmoteText_2  :integer          default(0), not null
#  EmoteText_3  :integer          default(0), not null
#  EmoteText_4  :integer          default(0), not null
#  EmoteText_5  :integer          default(0), not null
#  EmoteText_6  :integer          default(0), not null
#  EmoteText_7  :integer          default(0), not null
#  EmoteText_8  :integer          default(0), not null
#  EmoteText_9  :integer          default(0), not null
#  ID           :integer          default(0), not null, primary key
#  Name         :string(100)
#
module World
  class EmotestextDbc < WorldApplicationRecord
    self.table_name = 'emotestext_dbc'
    self.primary_key = 'ID'
  end
end
