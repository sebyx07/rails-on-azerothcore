# frozen_string_literal: true

# == Schema Information
#
# Table name: player_factionchange_titles
#
#  alliance_comment :text(65535)
#  horde_comment    :text(65535)
#  alliance_id      :integer          not null, primary key
#  horde_id         :integer          not null, primary key
#
module World
  class PlayerFactionchangeTitle < WorldApplicationRecord
    self.table_name = 'player_factionchange_titles'
    self.primary_key = [:alliance_id, :horde_id]
    belongs_to :alliance, optional: true
    belongs_to :horde, optional: true
  end
end
