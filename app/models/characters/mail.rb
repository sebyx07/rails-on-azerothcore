# frozen_string_literal: true

# == Schema Information
#
# Table name: mail
#
#  id(Identifier)                               :integer          default(0), unsigned, not null, primary key
#  body                                         :text(4294967295)
#  checked                                      :integer          default(0), unsigned, not null
#  cod                                          :integer          default(0), unsigned, not null
#  deliver_time                                 :integer          default(0), unsigned, not null
#  expire_time                                  :integer          default(0), unsigned, not null
#  has_items                                    :integer          default(0), unsigned, not null
#  mailTemplateId                               :integer          default(0), unsigned, not null
#  messageType                                  :integer          default(0), unsigned, not null
#  money                                        :integer          default(0), unsigned, not null
#  receiver(Character Global Unique Identifier) :integer          default(0), unsigned, not null
#  sender(Character Global Unique Identifier)   :integer          default(0), unsigned, not null
#  stationery                                   :integer          default(41), not null
#  subject                                      :text(4294967295)
#
# Indexes
#
#  idx_receiver  (receiver)
#
module Characters
  class Mail < CharactersApplicationRecord
    self.table_name = 'mail'
    self.primary_key = 'id'
  end
end
