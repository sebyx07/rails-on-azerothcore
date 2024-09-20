# frozen_string_literal: true

module Items
  class MySword < ApplicationItem
    def self.build
      World::ItemTemplate.find_by!(entry: 32837, name: 'Warglaive of Azzinoth').tap do |sword|
        sword.entry = item_id
        sword.name = 'My Sword 1'
      end
    end

    def self.item_id
      BASE_ITEM_ID + 1
    end

    def on_quest_accept
      puts params[:player].name + ' accepted the quest'
    end
  end
end
