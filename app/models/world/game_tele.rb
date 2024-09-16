# frozen_string_literal: true

# == Schema Information
#
# Table name: game_tele
#
#  id          :integer          unsigned, not null, primary key
#  map         :integer          default(0), unsigned, not null
#  name        :string(100)      default(""), not null
#  orientation :float(24)        default(0.0), not null
#  position_x  :float(24)        default(0.0), not null
#  position_y  :float(24)        default(0.0), not null
#  position_z  :float(24)        default(0.0), not null
#
module World
  class GameTele < WorldApplicationRecord
    self.table_name = 'game_tele'
    self.primary_key = 'id'
  end
end
