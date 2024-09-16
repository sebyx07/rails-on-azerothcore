# frozen_string_literal: true

# == Schema Information
#
# Table name: guild
#
#  BackgroundColor :integer          default(0), unsigned, not null
#  BankMoney       :bigint           default(0), unsigned, not null
#  BorderColor     :integer          default(0), unsigned, not null
#  BorderStyle     :integer          default(0), unsigned, not null
#  EmblemColor     :integer          default(0), unsigned, not null
#  EmblemStyle     :integer          default(0), unsigned, not null
#  createdate      :integer          default(0), unsigned, not null
#  guildid         :integer          default(0), unsigned, not null, primary key
#  info            :string(500)      default(""), not null
#  leaderguid      :integer          default(0), unsigned, not null
#  motd            :string(128)      default(""), not null
#  name            :string(24)       default(""), not null
#
module Characters
  class Guild < CharactersApplicationRecord
    self.table_name = 'guild'
    self.primary_key = :guildid
  end
end
