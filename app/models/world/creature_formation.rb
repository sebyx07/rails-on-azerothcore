# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_formations
#
#  angle      :float(24)        default(0.0), not null
#  dist       :float(24)        default(0.0), not null
#  groupAI    :integer          default(0), unsigned, not null
#  leaderGUID :integer          default(0), unsigned, not null
#  memberGUID :integer          default(0), unsigned, not null, primary key
#  point_1    :integer          default(0), unsigned, not null
#  point_2    :integer          default(0), unsigned, not null
#
module World
  class CreatureFormation < WorldApplicationRecord
    self.table_name = 'creature_formations'
    self.primary_key = 'memberGUID'
  end
end
