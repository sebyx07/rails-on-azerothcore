# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_text_locale
#
#  CreatureID :integer          default(0), unsigned, not null, primary key
#  GroupID    :integer          default(0), unsigned, not null, primary key
#  ID         :integer          default(0), unsigned, not null, primary key
#  Locale     :string(4)        not null, primary key
#  Text       :text(65535)
#
module World
  class CreatureTextLocale < WorldApplicationRecord
    self.table_name = 'creature_text_locale'
    self.primary_key = %i[CreatureID GroupID ID Locale]
  end
end
