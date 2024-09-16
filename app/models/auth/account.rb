# frozen_string_literal: true

module Auth
  class Account < AuthApplicationRecord
    self.table_name = 'account'
    self.primary_key = 'id'

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :salt, presence: true
    validates :verifier, presence: true

    def password=(value)
      self.salt, self.verifier = Auth::Srp6.make_registration_data(username, value)
    end

    def authenticate(input_password)
      Auth::Srp6.authenticate_directly(username, input_password, salt, verifier)
    end
  end
end
