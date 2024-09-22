# frozen_string_literal: true

module AzerothCore
  class Item
    class ImportItem
      class DbcItemNotFound < StandardError; end
      attr_reader :record
      def initialize(klass)
        @klass = klass
        @new_record = false
      end

      def import
        record = @klass.build
        entry = record.entry
        record = record.dup
        record.entry = entry

        AzerothCore::Log.standard(
          "#{"Item".colorize(:green)} importing (#{record.name.colorize(:red)}) ##{record.entry.to_s.colorize(:blue)}"
        )

        existing_record = World::ItemTemplate.find_by(entry: record.entry)
        if existing_record.present?
          @record = existing_record
          existing_record.assign_attributes(record.attributes)
          existing_record.save!
        else
          @record = record
          @new_record = true
          record.save!
        end

        entry
      end

      def new_record?
        @new_record
      end

      def to_dbc(custom_item_editor)
        if @klass.respond_to?(:to_dbc)
          return @klass.to_dbc(custom_item_editor)
        end

        custom_item_editor.items_manager.find_by(:id, @klass.inherit_from).first.tap do |item|
          raise DbcItemNotFound, "Item ##{@klass.inherit_from} not found in DBC" unless item
        end.tap do |item|
          item[:id] = @record.entry
        end
      end
    end
  end
end
