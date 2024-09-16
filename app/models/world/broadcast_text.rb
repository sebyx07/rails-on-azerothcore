# frozen_string_literal: true

# == Schema Information
#
# Table name: broadcast_text
#
#  EmoteDelay1    :integer
#  EmoteDelay2    :integer
#  EmoteDelay3    :integer
#  EmoteID1       :integer
#  EmoteID2       :integer
#  EmoteID3       :integer
#  EmotesID       :integer
#  FemaleText     :text(4294967295)
#  Flags          :integer
#  ID             :integer          default(0), unsigned, not null, primary key
#  LanguageID     :integer
#  MaleText       :text(4294967295)
#  SoundEntriesId :integer
#  VerifiedBuild  :integer          default(0)
#
module World
  class BroadcastText < WorldApplicationRecord
    self.table_name = 'broadcast_text'
    self.primary_key = 'ID'
  end
end
