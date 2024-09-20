# frozen_string_literal: true

module AzerothCore
  class Item
    class << self
      attr_accessor :abstract_class

      def build
        raise NotImplementedError
      end

      def item_id
        raise NotImplementedError
      end

      def record
        World::ItemTemplate.find_by!(entry: item_id)
      end

      def reload!
        return if Rails.env.test?
        return unless World::ItemTemplate.table_exists?

        ItemsReloader.new.reload
      rescue ActiveRecord::NoDatabaseError
        # Ignore
      end
    end
  end
end
