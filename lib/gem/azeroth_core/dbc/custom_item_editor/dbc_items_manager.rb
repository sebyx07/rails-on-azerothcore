# frozen_string_literal: true

module AzerothCore
  module Dbc
    class CustomItemEditor
      class DbcItemsManager < WowDBC::DBCFile
        def initialize(file_path)
          field_names = {
            id: :uint32,
            class: :uint32,
            subclass: :uint32,
            sound_override_subclass: :int32,
            material: :uint32,
            display_id: :uint32,
            inventory_type: :uint32,
            sheath_type: :uint32
          }

          super(file_path, field_names)
          read
        end
      end
    end
  end
end
