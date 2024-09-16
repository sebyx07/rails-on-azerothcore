# frozen_string_literal: true

# == Schema Information
#
# Table name: linked_respawn
#
#  guid(dependent creature)    :integer          unsigned, not null, primary key
#  linkType                    :integer          default(0), unsigned, not null, primary key
#  linkedGuid(master creature) :integer          unsigned, not null
#
module World
  class LinkedRespawn < WorldApplicationRecord
    self.table_name = 'linked_respawn'
    self.primary_key = [:guid, :linkType]
  end
end
