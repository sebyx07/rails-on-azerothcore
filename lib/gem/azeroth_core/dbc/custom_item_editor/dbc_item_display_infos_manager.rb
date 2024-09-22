# frozen_string_literal: true

module AzerothCore
  module Dbc
    class CustomItemEditor
      class DbcItemDisplayInfosManager < WowDBC::DBCFile
        def initialize(file_path)
          # Field names describing the structure of the DBC file
          field_names = [
            :id,                          # Unique identifier for the item display information
            :model_resource_id_1,         # Resource ID of the first 3D model used by the item
            :model_resource_id_2,         # Resource ID of the second 3D model for alternate appearances
            :model_material_resource_id_1,  # Primary material (texture/shader) resource ID for the first model
            :model_material_resource_id_2,  # Secondary material resource ID for the second model
            :inventory_icon_id_1,         # ID of the inventory icon for the primary model
            :inventory_icon_id_2,         # ID of the alternate inventory icon for the second model
            :geoset_group_1,              # First geoset group for customizable model parts
            :geoset_group_2,              # Second geoset group for further customization
            :geoset_group_3,              # Third geoset group for additional model variations
            :geoset_group_4,              # Fourth geoset group for detailed customization of model parts
            :spell_visual_id,             # ID linking to a spell visual effect associated with the item
            :group_sound_index,           # Index for sounds associated with the item (e.g., attack sounds)
            :helmet_geoset_vis_id_1,      # Geoset visibility ID for the first helmet model
            :helmet_geoset_vis_id_2,      # Geoset visibility ID for the second helmet model
            :texture_1,                   # ID of the first texture applied to the model
            :texture_2,                   # ID of the second texture for alternate appearances
            :item_visual,                 # Visual effects ID influencing the item's appearance
            :particle_color_id,           # ID specifying particle colors used in item effects
            :other,
            :yet_another
          ]

          # Call the parent class constructor with the file path and field names
          super(file_path, field_names)

          # Read the data from the DBC file
          read
        end
      end
    end
  end
end
