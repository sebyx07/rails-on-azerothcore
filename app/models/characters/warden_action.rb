# frozen_string_literal: true

# == Schema Information
#
# Table name: warden_action
#
#  action   :integer          unsigned
#  wardenId :integer          unsigned, not null, primary key
#
module Characters
  class WardenAction < CharactersApplicationRecord
    self.table_name = 'warden_action'
    self.primary_key = :wardenId
  end
end
