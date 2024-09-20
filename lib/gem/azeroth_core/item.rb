# frozen_string_literal: true

module AzerothCore
  class Item
    BASE_ITEM_ID = 1_000_000
    class << self
      attr_accessor :abstract_class

      def build
        raise NotImplementedError
      end

      def reload!
        return if Rails.env.test?
        return unless World::ItemTemplate.table_exists?
        descendants.each do |subclass|
          AzerothCore::Item::ImportItem.new(subclass).import
        end
      rescue ActiveRecord::NoDatabaseError
        # Ignore
      end
    end
  end
end
