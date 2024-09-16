# frozen_string_literal: true

# == Schema Information
#
# Table name: lfg_data
#
#  dungeon                        :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  state                          :integer          default(0), unsigned, not null
#
module Characters
  class LfgDatum < CharactersApplicationRecord
    self.table_name = 'lfg_data'
    self.primary_key = :guid
  end
end
