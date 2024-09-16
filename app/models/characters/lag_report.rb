# frozen_string_literal: true

# == Schema Information
#
# Table name: lag_reports
#
#  createTime :integer          default(0), unsigned, not null
#  guid       :integer          default(0), unsigned, not null
#  lagType    :integer          default(0), unsigned, not null
#  latency    :integer          default(0), unsigned, not null
#  mapId      :integer          default(0), unsigned, not null
#  posX       :float(24)        default(0.0), not null
#  posY       :float(24)        default(0.0), not null
#  posZ       :float(24)        default(0.0), not null
#  reportId   :integer          unsigned, not null, primary key
#
module Characters
  class LagReport < CharactersApplicationRecord
    self.table_name = 'lag_reports'
    self.primary_key = :reportId
  end
end
