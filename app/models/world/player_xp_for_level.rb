# frozen_string_literal: true

# == Schema Information
#
# Table name: player_xp_for_level
#
#  Experience :integer          unsigned, not null
#  Level      :integer          unsigned, not null, primary key
#
module World
  class PlayerXpForLevel < WorldApplicationRecord
    self.table_name = 'player_xp_for_level'
    self.primary_key = 'Level'
  end
end
