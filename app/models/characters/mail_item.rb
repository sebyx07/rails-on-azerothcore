# frozen_string_literal: true

# == Schema Information
#
# Table name: mail_items
#
#  item_guid                                    :integer          default(0), unsigned, not null, primary key
#  receiver(Character Global Unique Identifier) :integer          default(0), unsigned, not null
#  mail_id                                      :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_mail_id   (mail_id)
#  idx_receiver  (receiver)
#
module Characters
  class MailItem < CharactersApplicationRecord
    self.table_name = 'mail_items'
    self.primary_key = 'item_guid'
  end
end
