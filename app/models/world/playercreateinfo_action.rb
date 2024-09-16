# frozen_string_literal: true

# == Schema Information
#
# Table name: playercreateinfo_action
#
#  action :integer          default(0), unsigned, not null
#  button :integer          default(0), unsigned, not null, primary key
#  class  :integer          default(0), unsigned, not null, primary key
#  race   :integer          default(0), unsigned, not null, primary key
#  type   :integer          default(0), unsigned, not null
#
# Indexes
#
#  playercreateinfo_race_class_index  (race,class)
#
module World
  class PlayercreateinfoAction < WorldApplicationRecord
    self.table_name = 'playercreateinfo_action'
    self.primary = [:class, :button, :class]
  end
end
