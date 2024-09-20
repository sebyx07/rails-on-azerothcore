# frozen_string_literal: true

module AzerothCore
  module Dbc
    class CustomItemEditor
      class ItemRecord < BinData::Record
        endian :little

        uint32 :id
        uint32 :icon_file_data_id
        uint8  :class_id
        uint8  :subclass_id
        uint8  :sound_override_subclass_id
        uint8  :material
        uint8  :inventory_type
        uint8  :sheathe_type
        uint8  :group_sound_id
      end
    end
  end
end
