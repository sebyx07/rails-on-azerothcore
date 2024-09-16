# frozen_string_literal: true

# == Schema Information
#
# Table name: item_set_names
#
#  InventoryType :integer          default(0), unsigned, not null
#  VerifiedBuild :integer
#  entry         :integer          unsigned, not null, primary key
#  name          :string(255)      default(""), not null
#
module World
  class ItemSetName < WorldApplicationRecord
    self.table_name = 'item_set_names'
    self.primary_key = :entry
  end
end
