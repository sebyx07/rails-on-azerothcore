# frozen_string_literal: true

# == Schema Information
#
# Table name: broadcast_text_locale
#
#  FemaleText    :text(65535)
#  ID            :integer          default(0), unsigned, not null, primary key
#  MaleText      :text(65535)
#  VerifiedBuild :integer          default(0)
#  locale        :string(4)        not null, primary key
#
module World
  class BroadcastTextLocale < WorldApplicationRecord
    self.table_name = 'broadcast_text_locale'
    self.primary_key = %w[ID locale]
  end
end
