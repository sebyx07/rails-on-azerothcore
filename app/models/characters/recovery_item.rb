# frozen_string_literal: true

# == Schema Information
#
# Table name: recovery_item
#
#  Count     :integer          default(0), unsigned, not null
#  Guid      :integer          default(0), unsigned, not null
#  Id        :integer          unsigned, not null, primary key
#  ItemEntry :integer          default(0), unsigned
#
# Indexes
#
#  idx_guid  (Guid)
#
module Characters
  class RecoveryItem < CharactersApplicationRecord
    self.table_name = 'recovery_item'
    self.primary_key = :Id
  end
end
