# frozen_string_literal: true

# == Schema Information
#
# Table name: calendar_invites
#
#  id         :bigint           default(0), unsigned, not null, primary key
#  event      :bigint           default(0), unsigned, not null
#  invitee    :integer          default(0), unsigned, not null
#  rank       :integer          default(0), unsigned, not null
#  sender     :integer          default(0), unsigned, not null
#  status     :integer          default(0), unsigned, not null
#  statustime :integer          default(0), unsigned, not null
#  text       :string(255)      default(""), not null
#
module Characters
  class CalendarInvite < CharactersApplicationRecord
    self.table_name = 'calendar_invites'
    self.primary_key = 'id'
  end
end
