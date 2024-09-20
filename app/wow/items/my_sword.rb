# frozen_string_literal: true

module Items
  class MySword < ApplicationItem
    def self.build
      World::ItemTemplate.find_by!(entry: 32837, name: 'Warglaive of Azzinoth').tap do |sword|
        sword.entry = BASE_ITEM_ID + 1
        sword.name = 'My Sword'
      end
    end
  end
end
