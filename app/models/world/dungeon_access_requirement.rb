# frozen_string_literal: true

# == Schema Information
#
# Table name: dungeon_access_requirements
#
#  comment                                                                                                               :string(255)
#  faction(0 = Alliance, 1 = Horde, 2 = Both factions)                                                                   :integer          default(2), unsigned, not null
#  leader_only(0 = check the requirement for the player trying to enter, 1 = check the requirement for the party leader) :integer          default(0), not null
#  priority(Priority order for the requirement, sorted by type. 0 is the highest priority)                               :integer          unsigned
#  requirement_note(Optional msg shown ingame to player if he cannot enter. You can add extra info)                      :string(255)
#  requirement_type(0 = achiev, 1 = quest, 2 = item)                                                                     :integer          unsigned, not null, primary key
#  dungeon_access_id(ID from dungeon_access_template)                                                                    :integer          unsigned, not null, primary key
#  requirement_id(Achiev/quest/item ID)                                                                                  :integer          unsigned, not null, primary key
#
module World
  class DungeonAccessRequirement < WorldApplicationRecord
    self.table_name = 'dungeon_access_requirements'
    self.primary_key = %i[dungeon_access_id requirement_type requirement_id]
    belongs_to :dungeon_access, optional: true
    belongs_to :requirement, optional: true
  end
end
