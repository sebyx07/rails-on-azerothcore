# frozen_string_literal: true

# == Schema Information
#
# Table name: game_event_npc_vendor
#
#  ExtendedCost                         :integer          default(0), unsigned, not null
#  eventEntry(Entry of the game event.) :integer          not null
#  guid                                 :integer          default(0), unsigned, not null, primary key
#  incrtime                             :integer          default(0), unsigned, not null
#  item                                 :integer          default(0), unsigned, not null, primary key
#  maxcount                             :integer          default(0), unsigned, not null
#  slot                                 :integer          default(0), not null
#
# Indexes
#
#  slot  (slot)
#
module World
  class GameEventNpcVendor < WorldApplicationRecord
    self.table_name = 'game_event_npc_vendor'
    self.primary_key = %w[guid item]
  end
end
