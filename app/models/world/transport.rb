# frozen_string_literal: true

# == Schema Information
#
# Table name: transports
#
#  ScriptName :string(64)       default(""), not null
#  entry      :integer          default(0), unsigned, not null
#  guid       :integer          unsigned, not null, primary key
#  name       :text(65535)
#
# Indexes
#
#  idx_entry  (entry) UNIQUE
#
module World
  class Transport < WorldApplicationRecord
    self.table_name = 'transports'
    self.primary_key = 'guid'
  end
end
