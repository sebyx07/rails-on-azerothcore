# frozen_string_literal: true

# == Schema Information
#
# Table name: creaturedisplayinfoextra_dbc
#
#  BakeName         :string(100)      not null
#  DisplayRaceID    :integer          default(0), unsigned, not null
#  DisplaySexID     :integer          default(0), unsigned, not null
#  FaceID           :integer          default(0), unsigned, not null
#  FacialHairID     :integer          default(0), unsigned, not null
#  Flags            :integer          default(0), unsigned, not null
#  HairColorID      :integer          default(0), unsigned, not null
#  HairStyleID      :integer          default(0), unsigned, not null
#  ID               :integer          default(0), unsigned, not null, primary key
#  NPCItemDisplay1  :integer          default(0), unsigned, not null
#  NPCItemDisplay10 :integer          default(0), unsigned, not null
#  NPCItemDisplay11 :integer          default(0), unsigned, not null
#  NPCItemDisplay2  :integer          default(0), unsigned, not null
#  NPCItemDisplay3  :integer          default(0), unsigned, not null
#  NPCItemDisplay4  :integer          default(0), unsigned, not null
#  NPCItemDisplay5  :integer          default(0), unsigned, not null
#  NPCItemDisplay6  :integer          default(0), unsigned, not null
#  NPCItemDisplay7  :integer          default(0), unsigned, not null
#  NPCItemDisplay8  :integer          default(0), unsigned, not null
#  NPCItemDisplay9  :integer          default(0), unsigned, not null
#  SkinID           :integer          default(0), unsigned, not null
#
module World
  class CreaturedisplayinfoextraDbc < WorldApplicationRecord
    self.table_name = 'creaturedisplayinfoextra_dbc'
    self.primary_key = 'ID'
  end
end
