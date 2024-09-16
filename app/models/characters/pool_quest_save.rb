# frozen_string_literal: true

# == Schema Information
#
# Table name: pool_quest_save
#
#  pool_id  :integer          default(0), unsigned, not null, primary key
#  quest_id :integer          default(0), unsigned, not null, primary key
#
module Characters
  class PoolQuestSave < CharactersApplicationRecord
    self.table_name = 'pool_quest_save'
    self.primary_key = %i[pool_id quest_id]
  end
end
