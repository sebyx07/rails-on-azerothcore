# frozen_string_literal: true

module AzerothCore
  class Item
    class ImportItem
      def initialize(klass)
        @klass = klass
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
          existing_record.assign_attributes(record.attributes)
          existing_record.save!
        else
          record.save!
        end
      end
    end
  end
end
