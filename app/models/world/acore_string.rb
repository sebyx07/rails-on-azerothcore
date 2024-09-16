# frozen_string_literal: true

# == Schema Information
#
# Table name: acore_string
#
#  content_default :text(65535)      not null
#  entry           :integer          default(0), unsigned, not null, primary key
#  locale_deDE     :text(65535)
#  locale_esES     :text(65535)
#  locale_esMX     :text(65535)
#  locale_frFR     :text(65535)
#  locale_koKR     :text(65535)
#  locale_ruRU     :text(65535)
#  locale_zhCN     :text(65535)
#  locale_zhTW     :text(65535)
#
module World
  class AcoreString < WorldApplicationRecord
    self.table_name = 'acore_string'
    self.primary_key = 'entry'
  end
end
