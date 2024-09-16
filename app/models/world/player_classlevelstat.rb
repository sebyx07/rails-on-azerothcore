# frozen_string_literal: true

# == Schema Information
#
# Table name: player_classlevelstats
#
#  basehp   :integer          default(1), unsigned, not null
#  basemana :integer          default(1), unsigned, not null
#  class    :integer          unsigned, not null, primary key
#  level    :integer          unsigned, not null, primary key
#
module World
  class PlayerClasslevelstat < WorldApplicationRecord
    self.table_name = 'player_classlevelstats'
    self.primary_key = [:class, :level]
  end
end
