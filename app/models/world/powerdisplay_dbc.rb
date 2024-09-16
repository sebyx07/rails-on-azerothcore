# frozen_string_literal: true

# == Schema Information
#
# Table name: powerdisplay_dbc
#
#  ActualType          :integer          default(0), not null
#  Blue                :integer          default(0), unsigned, not null
#  GlobalstringBaseTag :string(100)
#  Green               :integer          default(0), unsigned, not null
#  ID                  :integer          default(0), not null, primary key
#  Red                 :integer          default(0), unsigned, not null
#
module World
  class PowerdisplayDbc < WorldApplicationRecord
    self.table_name = 'powerdisplay_dbc'
    self.primary_key = 'ID'
  end
end
