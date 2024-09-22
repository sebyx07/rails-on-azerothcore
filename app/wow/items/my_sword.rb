# frozen_string_literal: true

module Items
  class MySword < ApplicationItem
    class << self
      def build
        World::ItemTemplate.find_by!(entry: inherit_from, name: 'Warglaive of Azzinoth').tap do |sword|
          sword.entry = item_id
          sword.name = 'My Sword 1'
        end
      end

      def item_id
        ApplicationItem::BASE_ITEM_ID + 1
      end

      def inherit_from
        32837
      end
    end

    def on_quest_accept
      puts params[:player].name + ' accepted the quest'
    end
  end
end
