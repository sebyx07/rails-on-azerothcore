# frozen_string_literal: true

# == Schema Information
#
# Table name: gossip_menu_option_locale
#
#  BoxText    :text(65535)
#  Locale     :string(4)        not null, primary key
#  MenuID     :integer          default(0), unsigned, not null, primary key
#  OptionID   :integer          default(0), unsigned, not null, primary key
#  OptionText :text(65535)
#
module World
  class GossipMenuOptionLocale < WorldApplicationRecord
    self.table_name = 'gossip_menu_option_locale'
    self.primary_key = %i[MenuID OptionID Locale]
  end
end
