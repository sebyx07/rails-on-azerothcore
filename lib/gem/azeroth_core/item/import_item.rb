# frozen_string_literal: true

module AzerothCore
  class Item
    class ImportItem
      def initialize(klass)
        @klass = klass
        @new_record = false
      end

      def import
        return if @klass.abstract_class

        begin
          record = @klass.build
          entry = record.entry
          record = record.dup
          record.entry = entry
        rescue ActiveRecord::RecordNotFound
          return
        end

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

      def to_dbc
        return unless @record

        Dbc::CustomItemEditor::ItemRecord.new(
          id: @record.entry,
          icon_file_data_id: @record.displayid,
          class_id: @record.c_class,
          subclass_id: @record.subclass,
          sound_override_subclass_id: @record.sound_override_subclass,
          material: @record.material,
          inventory_type: @record.inventory_type,
          sheathe_type: @record.sheath,
          group_sound_id: 0
        )
      end

      def new_record?
        @new_record
      end
    end
  end
end
