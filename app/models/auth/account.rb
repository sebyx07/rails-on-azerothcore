# frozen_string_literal: true

# == Schema Information
#
# Table name: account
#
#  id(Identifier)    :integer          unsigned, not null, primary key
#  email             :string(255)      default(""), not null
#  expansion         :integer          default(2), unsigned, not null
#  failed_logins     :integer          default(0), unsigned, not null
#  joindate          :datetime         not null
#  last_attempt_ip   :string(15)       default("127.0.0.1"), not null
#  last_ip           :string(15)       default("127.0.0.1"), not null
#  last_login        :datetime
#  locale            :integer          default(0), unsigned, not null
#  lock_country      :string(2)        default("00"), not null
#  locked            :integer          default(0), unsigned, not null
#  muteby            :string(50)       default(""), not null
#  mutereason        :string(255)      default(""), not null
#  mutetime          :bigint           default(0), not null
#  online            :integer          default(0), unsigned, not null
#  os                :string(3)        default(""), not null
#  recruiter         :integer          default(0), unsigned, not null
#  reg_mail          :string(255)      default(""), not null
#  salt              :binary(32)       not null
#  session_key       :binary(40)
#  totaltime         :integer          default(0), unsigned, not null
#  totp_secret       :binary(128)
#  username          :string(32)       default(""), not null
#  verifier          :binary(32)       not null
#
# Indexes
#
#  idx_username  (username) UNIQUE
#
module Auth
  class Account < AuthApplicationRecord
    self.table_name = 'account'
    self.primary_key = 'id'

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :salt, presence: true
    validates :verifier, presence: true

    has_many :characters, class_name: 'Characters::Character', foreign_key: 'account'

    def password=(value)
      self.salt, self.verifier = Auth::Srp6.make_registration_data(username, value)
    end

    def authenticate(input_password)
      Auth::Srp6.authenticate_directly(username, input_password, salt, verifier)
    end
  end
end
