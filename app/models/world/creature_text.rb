# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_text
#
#  BroadcastTextId :integer          default(0), not null
#  CreatureID      :integer          default(0), unsigned, not null, primary key
#  Duration        :integer          default(0), unsigned, not null
#  Emote           :integer          default(0), unsigned, not null
#  GroupID         :integer          default(0), unsigned, not null, primary key
#  ID              :integer          default(0), unsigned, not null, primary key
#  Language        :integer          default(0), not null
#  Probability     :float(24)        default(0.0), not null
#  Sound           :integer          default(0), unsigned, not null
#  Text            :text(4294967295)
#  TextRange       :integer          default(0), unsigned, not null
#  Type            :integer          default(0), unsigned, not null
#  comment         :string(255)      default("")
#
module World
  class CreatureText < WorldApplicationRecord
    self.table_name = 'creature_text'
    self.primary_key = %i[CreatureID GroupID ID]
  end
end
