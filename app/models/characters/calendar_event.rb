# frozen_string_literal: true

# == Schema Information
#
# Table name: calendar_events
#
#  id          :bigint           default(0), unsigned, not null, primary key
#  creator     :integer          default(0), unsigned, not null
#  description :string(255)      default(""), not null
#  dungeon     :integer          default(-1), not null
#  eventtime   :integer          default(0), unsigned, not null
#  flags       :integer          default(0), unsigned, not null
#  time2       :integer          default(0), unsigned, not null
#  title       :string(255)      default(""), not null
#  type        :integer          default(4), unsigned, not null
#
module Characters
  class CalendarEvent < CharactersApplicationRecord
    self.table_name = 'calendar_events'
    self.primary_key = 'id'
  end
end
