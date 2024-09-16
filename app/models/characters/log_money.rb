# frozen_string_literal: true

# == Schema Information
#
# Table name: log_money
#
#  date                                                       :datetime         not null
#  money                                                      :bigint           unsigned, not null
#  receiver_acc                                               :integer          unsigned, not null
#  receiver_name                                              :text(65535)      not null
#  sender_acc                                                 :integer          unsigned, not null
#  sender_guid                                                :integer          unsigned, not null
#  sender_ip                                                  :text(65535)      not null
#  sender_name                                                :text(65535)      not null
#  topic                                                      :text(65535)      not null
#  type(1=COD,2=AH,3=GB DEPOSIT,4=GB WITHDRAW,5=MAIL,6=TRADE) :integer          not null
#
module Characters
  class LogMoney < CharactersApplicationRecord
    self.table_name = 'log_money'
  end
end
