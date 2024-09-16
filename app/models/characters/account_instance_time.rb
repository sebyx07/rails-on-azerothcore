# frozen_string_literal: true

# == Schema Information
#
# Table name: account_instance_times
#
#  accountId   :integer          unsigned, not null, primary key
#  instanceId  :integer          default(0), unsigned, not null, primary key
#  releaseTime :bigint           default(0), unsigned, not null
#
module Characters
  class AccountInstanceTime < CharactersApplicationRecord
    self.table_name = 'account_instance_times'
    self.primary_key = %w[accountId instanceId]
  end
end
