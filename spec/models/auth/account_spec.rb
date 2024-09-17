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
require 'rails_helper'

RSpec.describe Auth::Account, type: :model do
  describe 'factory' do
    it 'is valid' do
      expect(create(:account)).to be_valid
    end
  end
end
