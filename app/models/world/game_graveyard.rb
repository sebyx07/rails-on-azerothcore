# frozen_string_literal: true

# == Schema Information
#
# Table name: game_graveyard
#
#  Comment :string(255)
#  ID      :integer          default(0), not null, primary key
#  Map     :integer          default(0), not null
#  x       :float(24)        default(0.0), not null
#  y       :float(24)        default(0.0), not null
#  z       :float(24)        default(0.0), not null
#
module World
  class GameGraveyard < WorldApplicationRecord
    self.table_name = 'game_graveyard'
    self.primary_key = 'ID'
  end
end
