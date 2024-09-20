# frozen_string_literal: true

module AzerothCore
  class Item
    class << self
      attr_accessor :abstract_class

      def build
        raise NotImplementedError
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
