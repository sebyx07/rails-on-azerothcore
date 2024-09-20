# frozen_string_literal: true

module Items
  class ApplicationItem < AzerothCore::Item
    BASE_ITEM_ID = 1_000_000
    self.abstract_class = true
  end
end
