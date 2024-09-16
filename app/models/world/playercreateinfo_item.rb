# frozen_string_literal: true

# == Schema Information
#
# Table name: playercreateinfo_item
#
#  Note   :string(255)
#  amount :integer          default(1), not null
#  class  :integer          default(0), unsigned, not null, primary key
#  itemid :integer          default(0), unsigned, not null, primary key
#  race   :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  playercreateinfo_race_class_index  (race,class)
#
module World
  class PlayercreateinfoItem < WorldApplicationRecord
    self.table_name = 'playercreateinfo_item'
    self.primary = [:race, :class, :itemid]
  end
end
