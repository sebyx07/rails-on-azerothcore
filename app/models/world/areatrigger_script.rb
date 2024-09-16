# frozen_string_literal: true

# == Schema Information
#
# Table name: areatrigger_scripts
#
#  ScriptName :string(64)       not null
#  entry      :integer          not null, primary key
#
module World
  class AreatriggerScript < WorldApplicationRecord
    self.table_name = 'areatrigger_scripts'
    self.primary_key = 'entry'
  end
end
