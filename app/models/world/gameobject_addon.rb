# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject_addon
#
#  guid              :integer          default(0), unsigned, not null, primary key
#  invisibilityType  :integer          default(0), unsigned, not null
#  invisibilityValue :integer          default(0), unsigned, not null
#
module World
  class GameobjectAddon < WorldApplicationRecord
    self.table_name = 'gameobject_addon'
    self.primary_key = 'guid'
  end
end
