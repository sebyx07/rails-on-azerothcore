# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_loot_template
#
#  Chance        :float(24)        default(100.0), not null
#  Comment       :string(255)
#  Entry         :integer          default(0), unsigned, not null, primary key
#  GroupId       :integer          default(0), unsigned, not null, primary key
#  Item          :integer          default(0), unsigned, not null, primary key
#  LootMode      :integer          default(1), unsigned, not null
#  MaxCount      :integer          default(1), unsigned, not null
#  MinCount      :integer          default(1), unsigned, not null
#  QuestRequired :integer          default(0), not null
#  Reference     :integer          default(0), not null, primary key
#
module World
  class CreatureLootTemplate < WorldApplicationRecord
    self.table_name = 'creature_loot_template'
    self.primary_key = %i[Entry Item GroupId Reference]
  end
end
