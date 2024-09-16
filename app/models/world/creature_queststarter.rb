# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_queststarter
#
#  id(Identifier)          :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier) :integer          default(0), unsigned, not null, primary key
#
module World
  class CreatureQueststarter < WorldApplicationRecord
    self.table_name = 'creature_queststarter'
    self.primary_key = %i[id quest]
  end
end
