# frozen_string_literal: true

# == Schema Information
#
# Table name: factiontemplate_dbc
#
#  Enemies_1    :integer          default(0), not null
#  Enemies_2    :integer          default(0), not null
#  Enemies_3    :integer          default(0), not null
#  Enemies_4    :integer          default(0), not null
#  EnemyGroup   :integer          default(0), not null
#  Faction      :integer          default(0), not null
#  FactionGroup :integer          default(0), not null
#  Flags        :integer          default(0), not null
#  FriendGroup  :integer          default(0), not null
#  Friend_1     :integer          default(0), not null
#  Friend_2     :integer          default(0), not null
#  Friend_3     :integer          default(0), not null
#  Friend_4     :integer          default(0), not null
#  ID           :integer          default(0), not null, primary key
#
module World
  class FactiontemplateDbc < WorldApplicationRecord
    self.table_name = 'factiontemplate_dbc'
    self.primary_key = 'ID'
  end
end
