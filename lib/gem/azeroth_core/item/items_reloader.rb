# frozen_string_literal: true

module AzerothCore
  class Item
    class ItemsReloader
      def initialize
        @saved_entries = []
      end

      def reload
        return if Rails.env.test?
        return unless World::ItemTemplate.table_exists?

        import_to_db
        import_to_dbc
      rescue ActiveRecord::NoDatabaseError
        # Ignore
      end

      private
        def import_to_db
          puts 'Importing items to database...'
          import_items.each do |item|
            entry = item.import
            next unless entry

            @saved_entries << entry
          end

          World::ItemTemplate.where('entry > ?', Items::ApplicationItem::BASE_ITEM_ID).where.not(entry: @saved_entries).delete_all
        end

        def import_to_dbc
          editor = Dbc::CustomItemEditor.new(
            input_dbc_path: Rails.root.join('dbc'),
            output_dbc_path: ENV['ACORE_ROOT_PATH'] + '/env/dist/client-data/dbc',
            output_mpq_path: ENV['WOW_ROOT_PATH'] + '/Data/Patch-4.MPQ'
          )

          has_new_items = false
          import_items.each do |item|
            if item.new_record?
              has_new_items = true
            end
            dbc_item = item.to_dbc(editor)
            editor.add_record(dbc_item)
          end

          editor.save_changes # if has_new_items
        end

        def sub_klasses
          @sub_klasses ||= AzerothCore::Item.descendants
        end

        def import_items
          @import_items ||= AzerothCore::Item.descendants.filter_map do |subclass|
            next if subclass.abstract_class
            ImportItem.new(subclass)
          end
        end
    end
  end
end
