# frozen_string_literal: true

module AzerothCore
  class Item
    class ImportItem
      def initialize(klass)
        @klass = klass
      end

      def import
        return if Rails.env.test?

        return if @klass.abstract_class

        record = @klass.build

        AzerothCore::Log.standard("#{"Item".colorize(:green)} importing (#{record.name.colorize(:purple)})")

        existing_record = @klass.find_by(entry: record.entry)
        if existing_record.present?
          existing_record.assign_attributes(record.attributes)
        end

        existing_record.save!
      end
    end
  end
end