# frozen_string_literal: true

# == Schema Information
#
# Table name: pvpstats_players
#
#  attr_1                :integer          default(0), unsigned
#  attr_2                :integer          default(0), unsigned
#  attr_3                :integer          default(0), unsigned
#  attr_4                :integer          default(0), unsigned
#  attr_5                :integer          default(0), unsigned
#  character_guid        :integer          unsigned, not null, primary key
#  score_bonus_honor     :integer          unsigned
#  score_damage_done     :integer          unsigned
#  score_deaths          :integer          unsigned
#  score_healing_done    :integer          unsigned
#  score_honorable_kills :integer          unsigned
#  score_killing_blows   :integer          unsigned
#  winner                :binary(1)        not null
#  battleground_id       :bigint           unsigned, not null, primary key
#
module Characters
  class PvpstatsPlayer < CharactersApplicationRecord
    self.table_name = 'pvpstats_players'
    self.primary_key = %i[character_guid battleground_id]
  end
end
