# frozen_string_literal: true

# == Schema Information
#
# Table name: battleground_deserters
#
#  datetime(datetime of the desertion) :datetime         not null
#  guid(characters.guid)               :integer          unsigned, not null
#  type(type of the desertion)         :integer          unsigned, not null
#
module Characters
  class BattlegroundDeserter < CharactersApplicationRecord
    self.table_name = 'battleground_deserters'
    self.primary_key = %w[guid datetime]
  end
end
