# frozen_string_literal: true

# == Schema Information
#
# Table name: gossip_menu
#
#  MenuID :integer          default(0), unsigned, not null, primary key
#  TextID :integer          default(0), unsigned, not null, primary key
#
module World
  class GossipMenu < WorldApplicationRecord
    self.table_name = 'gossip_menu'
    self.primary_key = %i[MenuID TextID]
  end
end
