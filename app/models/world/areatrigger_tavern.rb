# frozen_string_literal: true

# == Schema Information
#
# Table name: areatrigger_tavern
#
#  id(Identifier) :integer          default(0), unsigned, not null, primary key
#  faction        :integer          default(0), unsigned, not null
#  name           :text(65535)
#
module World
  class AreatriggerTavern < WorldApplicationRecord
    self.table_name = 'areatrigger_tavern'
    self.primary_key = 'id'
  end
end
