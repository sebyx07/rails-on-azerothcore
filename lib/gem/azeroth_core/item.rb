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

      def inherit_from
        raise NotImplementedError
      end

      def record
        World::ItemTemplate.find_by!(entry: item_id)
      end
    end
  end
end
