# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_questitem
#
#  CreatureEntry :integer          default(0), unsigned, not null, primary key
#  Idx           :integer          default(0), unsigned, not null, primary key
#  ItemId        :integer          default(0), unsigned, not null
#  VerifiedBuild :integer
#
module World
  class CreatureQuestitem < WorldApplicationRecord
    self.table_name = 'creature_questitem'
    self.primary_key = %i[CreatureEntry Idx]
  end
end
