# frozen_string_literal: true

# == Schema Information
#
# Table name: guild_bank_item
#
#  SlotId    :integer          default(0), unsigned, not null
#  TabId     :integer          default(0), unsigned, not null
#  guildid   :integer          default(0), unsigned, not null, primary key
#  item_guid :integer          default(0), unsigned, not null
#
# Indexes
#
#  Idx_item_guid  (item_guid)
#  guildid_key    (guildid)
#
module Characters
  class GuildBankItem < CharactersApplicationRecord
    self.table_name = 'guild_bank_item'
    self.primary_key = %i[slot_id tab_id guildid]
  end
end
