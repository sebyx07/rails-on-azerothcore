# frozen_string_literal: true

# == Schema Information
#
# Table name: character_queststatus
#
#  explored                       :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  itemcount1                     :integer          default(0), unsigned, not null
#  itemcount2                     :integer          default(0), unsigned, not null
#  itemcount3                     :integer          default(0), unsigned, not null
#  itemcount4                     :integer          default(0), unsigned, not null
#  itemcount5                     :integer          default(0), unsigned, not null
#  itemcount6                     :integer          default(0), unsigned, not null
#  mobcount1                      :integer          default(0), unsigned, not null
#  mobcount2                      :integer          default(0), unsigned, not null
#  mobcount3                      :integer          default(0), unsigned, not null
#  mobcount4                      :integer          default(0), unsigned, not null
#  playercount                    :integer          default(0), unsigned, not null
#  quest(Quest Identifier)        :integer          default(0), unsigned, not null, primary key
#  status                         :integer          default(0), unsigned, not null
#  timer                          :integer          default(0), unsigned, not null
#
module Characters
  class CharacterQueststatus < CharactersApplicationRecord
    self.table_name = 'character_queststatus'
    self.primary_key = [:guid, :quest]
  end
end
