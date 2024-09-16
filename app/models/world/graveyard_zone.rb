# frozen_string_literal: true

# == Schema Information
#
# Table name: graveyard_zone
#
#  Comment   :text(65535)
#  Faction   :integer          default(0), unsigned, not null
#  GhostZone :integer          default(0), unsigned, not null, primary key
#  ID        :integer          default(0), unsigned, not null, primary key
#
module World
  class GraveyardZone < WorldApplicationRecord
    self.table_name = 'graveyard_zone'
    self.primary_key = %i[GhostZone ID]
  end
end
