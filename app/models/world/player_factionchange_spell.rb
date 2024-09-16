# frozen_string_literal: true

# == Schema Information
#
# Table name: player_factionchange_spells
#
#  alliance_comment :text(65535)      not null
#  horde_comment    :text(65535)      not null
#  alliance_id      :integer          unsigned, not null, primary key
#  horde_id         :integer          unsigned, not null, primary key
#
module World
  class PlayerFactionchangeSpell < WorldApplicationRecord
    self.table_name = 'player_factionchange_spells'
    self.primary_key = [:alliance_id, :horde_id]
    belongs_to :alliance, optional: true
    belongs_to :horde, optional: true
  end
end
