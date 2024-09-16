# frozen_string_literal: true

# == Schema Information
#
# Table name: worldmapoverlay_dbc
#
#  AreaID_1      :integer          default(0), not null
#  AreaID_2      :integer          default(0), not null
#  AreaID_3      :integer          default(0), not null
#  AreaID_4      :integer          default(0), not null
#  HitRectBottom :integer          default(0), not null
#  HitRectLeft   :integer          default(0), not null
#  HitRectRight  :integer          default(0), not null
#  HitRectTop    :integer          default(0), not null
#  ID            :integer          default(0), not null, primary key
#  MapAreaID     :integer          default(0), not null
#  MapPointX     :integer          default(0), not null
#  MapPointY     :integer          default(0), not null
#  OffsetX       :integer          default(0), not null
#  OffsetY       :integer          default(0), not null
#  TextureHeight :integer          default(0), not null
#  TextureName   :string(100)
#  TextureWidth  :integer          default(0), not null
#
module World
  class WorldmapoverlayDbc < WorldApplicationRecord
    self.table_name = 'worldmapoverlay_dbc'
    self.primary_key = 'ID'
  end
end
