# frozen_string_literal: true

# == Schema Information
#
# Table name: reputation_spillover_template
#
#  faction(faction entry)                                  :integer          default(0), unsigned, not null, primary key
#  faction1(faction to give spillover for)                 :integer          default(0), unsigned, not null
#  faction2                                                :integer          default(0), unsigned, not null
#  faction3                                                :integer          default(0), unsigned, not null
#  faction4                                                :integer          default(0), unsigned, not null
#  faction5                                                :integer          default(0), unsigned, not null
#  faction6                                                :integer          default(0), unsigned, not null
#  rank_1(max rank,above this will not give any spillover) :integer          default(0), unsigned, not null
#  rank_2                                                  :integer          default(0), unsigned, not null
#  rank_3                                                  :integer          default(0), unsigned, not null
#  rank_4                                                  :integer          default(0), unsigned, not null
#  rank_5                                                  :integer          default(0), unsigned, not null
#  rank_6                                                  :integer          default(0), unsigned, not null
#  rate_1(the given rep points * rate)                     :float(24)        default(0.0), not null
#  rate_2                                                  :float(24)        default(0.0), not null
#  rate_3                                                  :float(24)        default(0.0), not null
#  rate_4                                                  :float(24)        default(0.0), not null
#  rate_5                                                  :float(24)        default(0.0), not null
#  rate_6                                                  :float(24)        default(0.0), not null
#
module World
  class ReputationSpilloverTemplate < WorldApplicationRecord
    self.table_name = 'reputation_spillover_template'
    self.primary_key = 'faction'
  end
end
