# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_questender
#
#  id(Identifier)          :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier) :integer          default(0), unsigned, not null, primary key
#
module World
  class CreatureQuestender < WorldApplicationRecord
    self.table_name = 'creature_questender'
    self.primary_key = %i[id quest]
  end
end
