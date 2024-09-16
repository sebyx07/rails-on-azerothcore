# frozen_string_literal: true

# == Schema Information
#
# Table name: secret_digest
#
#  id     :integer          unsigned, not null, primary key
#  digest :string(100)      not null
#
module Auth
  class SecretDigest < AuthApplicationRecord
    self.table_name = 'secret_digest'
    self.primary_key = 'id'
  end
end
