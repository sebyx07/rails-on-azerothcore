# frozen_string_literal: true

# == Schema Information
#
# Table name: emotes_dbc
#
#  AnimID             :integer          default(0), not null
#  EmoteFlags         :integer          default(0), not null
#  EmoteSlashCommand  :string(100)
#  EmoteSpecProc      :integer          default(0), not null
#  EmoteSpecProcParam :integer          default(0), not null
#  EventSoundID       :integer          default(0), not null
#  ID                 :integer          default(0), not null, primary key
#
module World
  class EmotesDbc < WorldApplicationRecord
    self.table_name = 'emotes_dbc'
    self.primary_key = 'ID'
  end
end
