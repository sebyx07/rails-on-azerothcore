# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_summon_groups
#
#  Comment      :string(255)      default(""), not null
#  entry        :integer          default(0), unsigned, not null, primary key
#  groupId      :integer          default(0), unsigned, not null
#  orientation  :float(24)        default(0.0), not null
#  position_x   :float(24)        default(0.0), not null
#  position_y   :float(24)        default(0.0), not null
#  position_z   :float(24)        default(0.0), not null
#  summonTime   :integer          default(0), unsigned, not null
#  summonType   :integer          default(0), unsigned, not null
#  summonerId   :integer          default(0), unsigned, not null
#  summonerType :integer          default(0), unsigned, not null
#
module World
  class CreatureSummonGroup < WorldApplicationRecord
    self.table_name = 'creature_summon_groups'
    self.primary_key = 'entry'
  end
end
