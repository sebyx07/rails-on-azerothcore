# frozen_string_literal: true

module AzerothCore
  class Item
    BASE_ITEM_ID = 1_000_000
    class << self
      attr_accessor :abstract_class

      def build
        raise NotImplementedError
      end
    end
  end
end
