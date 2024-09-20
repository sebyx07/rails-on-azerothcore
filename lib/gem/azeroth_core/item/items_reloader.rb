# frozen_string_literal: true

module AzerothCore
  class Item
    class ItemsReloader
      def initialize
        @saved_entries = []
      end

      def reload
        import_to_db
        import_to_dbc
      end

      private

      def import_to_db
        puts "Importing items to database..."
        import_items.each do |item|
          entry = item.import
          next unless entry

          @saved_entries << entry
        end

        World::ItemTemplate.where("entry > ?", Items::ApplicationItem::BASE_ITEM_ID).where.not(entry: @saved_entries).delete_all
      end

      def import_to_dbc
        puts "Importing items to DBC/MPQ..."
        editor = Dbc::CustomItemEditor.new(
          Rails.root.join('dbc/Item.dbc'),
          ENV['ACORE_ROOT_PATH'] + '/env/dist/client-data/dbc/Item.dbc',
          ENV['WOW_ROOT_PATH'] + '/Data/custom-items.MPQ'
        )

        has_new_items = false
        import_items.each do |item|
          if item.new_record?
            has_new_items = true
          end
          editor.add_record(item.to_dbc)
        end

        editor.save_changes if has_new_items
      end

      def sub_klasses
        @sub_klasses ||= AzerothCore::Item.descendants
      end

      def import_items
        @import_items ||= AzerothCore::Item.descendants.map do |subclass|
          ImportItem.new(subclass)
        end
      end
    end
  end
end