# frozen_string_literal: true

# == Schema Information
#
# Table name: instance_reset
#
#  difficulty :integer          default(0), unsigned, not null, primary key
#  mapid      :integer          default(0), unsigned, not null, primary key
#  resettime  :integer          default(0), unsigned, not null
#
# Indexes
#
#  difficulty  (difficulty)
#
module Characters
  class InstanceReset < CharactersApplicationRecord
    self.table_name = 'instance_reset'
    self.primary_key = %i[difficulty mapid]
  end
end
