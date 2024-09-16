# frozen_string_literal: true

# == Schema Information
#
# Table name: pvpstats_battlegrounds
#
#  id             :bigint           unsigned, not null, primary key
#  date           :datetime         not null
#  type           :integer          unsigned, not null
#  winner_faction :integer          not null
#  bracket_id     :integer          unsigned, not null
#
module Characters
  class PvpstatsBattleground < CharactersApplicationRecord
    self.table_name = 'pvpstats_battlegrounds'
    self.primary_key = :id
  end
end
