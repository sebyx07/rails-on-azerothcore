# frozen_string_literal: true

# == Schema Information
#
# Table name: instance
#
#  id                  :integer          default(0), unsigned, not null, primary key
#  completedEncounters :integer          default(0), unsigned, not null
#  data                :text(255)        not null
#  difficulty          :integer          default(0), unsigned, not null
#  map                 :integer          default(0), unsigned, not null
#  resettime           :integer          default(0), unsigned, not null
#
# Indexes
#
#  difficulty  (difficulty)
#  map         (map)
#  resettime   (resettime)
#
module Characters
  class Instance < CharactersApplicationRecord
    self.table_name = 'instance'
    self.primary_key = :id
  end
end
