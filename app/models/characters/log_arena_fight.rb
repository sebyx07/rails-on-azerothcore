# frozen_string_literal: true

# == Schema Information
#
# Table name: log_arena_fights
#
#  currOnline       :integer          unsigned, not null
#  duration         :integer          unsigned, not null
#  loser            :integer          unsigned, not null
#  loser_mmr        :integer          unsigned, not null
#  loser_tr         :integer          unsigned, not null
#  loser_tr_change  :integer          not null
#  time             :datetime         not null
#  type             :integer          unsigned, not null
#  winner           :integer          unsigned, not null
#  winner_mmr       :integer          unsigned, not null
#  winner_tr        :integer          unsigned, not null
#  winner_tr_change :integer          not null
#  fight_id         :integer          unsigned, not null, primary key
#
module Characters
  class LogArenaFight < CharactersApplicationRecord
    self.table_name = 'log_arena_fights'
    self.primary_key = :fight_id
  end
end
