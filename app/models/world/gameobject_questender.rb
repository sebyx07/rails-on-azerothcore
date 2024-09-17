# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject_questender
#
#  id                      :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier) :integer          default(0), unsigned, not null, primary key
#
module World
  class GameobjectQuestender < WorldApplicationRecord
    self.table_name = 'gameobject_questender'
    self.primary_key = %i[id quest]
  end
end
