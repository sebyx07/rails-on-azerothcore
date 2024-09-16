# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject_questitem
#
#  GameObjectEntry :integer          default(0), unsigned, not null, primary key
#  Idx             :integer          default(0), unsigned, not null, primary key
#  ItemId          :integer          default(0), unsigned, not null
#  VerifiedBuild   :integer
#
module World
  class GameobjectQuestitem < WorldApplicationRecord
    self.table_name = 'gameobject_questitem'
    self.primary_key = %i[GameObjectEntry Idx]
  end
end
