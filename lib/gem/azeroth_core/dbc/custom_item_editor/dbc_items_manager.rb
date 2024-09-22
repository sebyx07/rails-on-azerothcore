# frozen_string_literal: true

module AzerothCore
  module Dbc
    class CustomItemEditor
      class DbcItemsManager < WowDBC::DBCFile
        def initialize(file_path)
          field_names = [
            :id,               # itemID
            :display_id,          # FileDataID (icons path)
            :class_id,              # ItemClass
            :subclass_id,           # ItemSubClass
            :sound_override_subclass_id, # sound_override_subclassid
            :material,           # MaterialID
            :inventory_type,     # InventorySlotID
            :sheathe_type,             # SheathID
            :group_sounds_id        # GroupSoundsID (moved from ItemDisplayInfo)
          ]
          super(file_path, field_names)
          read
        end
      end
    end
  end
end
