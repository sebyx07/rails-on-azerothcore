# frozen_string_literal: true

# == Schema Information
#
# Table name: log_arena_memberstats
#
#  account   :integer          unsigned, not null
#  damage    :integer          unsigned, not null
#  guid      :integer          unsigned, not null
#  heal      :integer          unsigned, not null
#  ip        :string(15)       not null
#  kblows    :integer          unsigned, not null
#  name      :string(20)       not null
#  team      :integer          unsigned, not null
#  fight_id  :integer          unsigned, not null, primary key
#  member_id :integer          unsigned, not null, primary key
#
module Characters
  class LogArenaMemberstat < CharactersApplicationRecord
    self.table_name = 'log_arena_memberstats'
    self.primary_key = %i[fight_id member_id]
  end
end
