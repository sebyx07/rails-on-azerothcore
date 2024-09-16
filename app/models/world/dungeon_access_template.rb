# frozen_string_literal: true

# == Schema Information
#
# Table name: dungeon_access_template
#
#  id(The dungeon template ID)                                                                                                             :integer          unsigned, not null, primary key
#  comment(Dungeon Name 5/10/25/40 man - Normal/Heroic)                                                                                    :string(255)
#  difficulty(5 man: 0 = normal, 1 = heroic, 2 = epic (not implemented) | 10 man: 0 = normal, 2 = heroic | 25 man: 1 = normal, 3 = heroic) :integer          default(0), unsigned, not null
#  max_level                                                                                                                               :integer          unsigned
#  min_avg_item_level(Min average ilvl required to enter)                                                                                  :integer          unsigned
#  min_level                                                                                                                               :integer          unsigned
#  map_id(Map ID from instance_template)                                                                                                   :integer          unsigned
#
# Indexes
#
#  FK_dungeon_access_template__instance_template  (map_id)
#
module World
  class DungeonAccessTemplate < WorldApplicationRecord
    self.table_name = 'dungeon_access_template'
    self.primary_key = 'id'
    belongs_to :map, optional: true
  end
end
