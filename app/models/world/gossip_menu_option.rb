# frozen_string_literal: true

# == Schema Information
#
# Table name: gossip_menu_option
#
#  ActionMenuID          :integer          default(0), unsigned, not null
#  ActionPoiID           :integer          default(0), unsigned, not null
#  BoxBroadcastTextID    :integer          default(0), not null
#  BoxCoded              :integer          default(0), unsigned, not null
#  BoxMoney              :integer          default(0), unsigned, not null
#  BoxText               :text(65535)
#  MenuID                :integer          default(0), unsigned, not null, primary key
#  OptionBroadcastTextID :integer          default(0), not null
#  OptionID              :integer          default(0), unsigned, not null, primary key
#  OptionIcon            :integer          default(0), unsigned, not null
#  OptionNpcFlag         :integer          default(0), unsigned, not null
#  OptionText            :text(65535)
#  OptionType            :integer          default(0), unsigned, not null
#  VerifiedBuild         :integer
#
module World
  class GossipMenuOption < WorldApplicationRecord
    self.table_name = 'gossip_menu_option'
    self.primary_keys = %i[MenuID OptionID]
  end
end
