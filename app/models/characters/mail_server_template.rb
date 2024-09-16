# frozen_string_literal: true

# == Schema Information
#
# Table name: mail_server_template
#
#  id          :integer          unsigned, not null, primary key
#  active      :integer          default(1), unsigned, not null
#  body        :text(65535)      not null
#  itemA       :integer          default(0), unsigned, not null
#  itemCountA  :integer          default(0), unsigned, not null
#  itemCountH  :integer          default(0), unsigned, not null
#  itemH       :integer          default(0), unsigned, not null
#  moneyA      :integer          default(0), unsigned, not null
#  moneyH      :integer          default(0), unsigned, not null
#  reqLevel    :integer          default(0), unsigned, not null
#  reqPlayTime :integer          default(0), unsigned, not null
#  subject     :text(65535)      not null
#
module Characters
  class MailServerTemplate < CharactersApplicationRecord
    self.table_name = 'mail_server_template'
    self.primary_key = 'id'
  end
end
