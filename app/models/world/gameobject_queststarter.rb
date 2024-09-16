# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject_queststarter
#
#  id                      :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier) :integer          default(0), unsigned, not null, primary key
#
module World
  class GameobjectQueststarter < WorldApplicationRecord
    self.table_name = 'gameobject_queststarter'
    self.primary_keys = %i[id quest]
  end
end
