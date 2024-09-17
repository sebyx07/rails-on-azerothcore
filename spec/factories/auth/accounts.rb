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

FactoryBot.define do
  factory :account, class: Auth::Account do
    email { Faker::Internet.email }
    expansion { rand(0..10) }  # Assuming expansion can be between 0 and 10
    failed_logins { 0 }
    joindate { Faker::Time.between(from: 2.years.ago, to: Time.now) }
    last_attempt_ip { Faker::Internet.ip_v4_address }
    last_ip { Faker::Internet.ip_v4_address }
    last_login { Faker::Time.between(from: 1.year.ago, to: Time.now) }
    locale { rand(0..10) }  # Assuming locale can be between 0 and 10
    lock_country { Faker::Address.country_code }
    locked { [0, 1].sample }
    muteby { Faker::Internet.username(specifier: 5..50) }
    mutereason { Faker::Lorem.sentence }
    mutetime { Faker::Number.between(from: 0, to: 1000000) }
    online { [0, 1].sample }
    os { ['WIN', 'MAC', 'LIN'].sample }
    recruiter { rand(0..1000) }
    reg_mail { Faker::Internet.email }
    salt { SecureRandom.bytes(32) }
    session_key { SecureRandom.bytes(40) }
    totaltime { Faker::Number.between(from: 0, to: 1000000) }
    totp_secret { SecureRandom.bytes(128) }
    username { Faker::Internet.unique.username(specifier: 5..32) }
    verifier { SecureRandom.bytes(32) }

    trait :locked do
      locked { 1 }
    end

    trait :online do
      online { 1 }
    end

    trait :with_totp do
      totp_secret { SecureRandom.base64(128) }
    end
  end
end
