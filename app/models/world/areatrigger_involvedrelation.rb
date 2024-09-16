# frozen_string_literal: true

# == Schema Information
#
# Table name: areatrigger_involvedrelation
#
#  id(Identifier)          :integer          default(0), unsigned, not null, primary key
#  quest(Quest Identifier) :integer          default(0), unsigned, not null
#
module World
  class AreatriggerInvolvedrelation < WorldApplicationRecord
    self.table_name = 'areatrigger_involvedrelation'
    self.primary_key = 'id'
  end
end
