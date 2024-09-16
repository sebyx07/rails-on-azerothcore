# frozen_string_literal: true

# == Schema Information
#
# Table name: outdoorpvp_template
#
#  ScriptName :string(64)       default(""), not null
#  TypeId     :integer          unsigned, not null, primary key
#  comment    :text(65535)
#
module World
  class OutdoorpvpTemplate < WorldApplicationRecord
    self.table_name = 'outdoorpvp_template'
    self.primary_key = 'TypeId'
  end
end
