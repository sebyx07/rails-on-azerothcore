# frozen_string_literal: true

module Items
  class ApplicationItem < AzerothCore::Item
    BASE_ITEM_ID = 200_000
    self.abstract_class = true
  end
end
