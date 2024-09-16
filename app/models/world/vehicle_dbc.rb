# frozen_string_literal: true

# == Schema Information
#
# Table name: vehicle_dbc
#
#  CameraFadeDistScalarMax :float(24)        default(0.0), not null
#  CameraFadeDistScalarMin :float(24)        default(0.0), not null
#  CameraPitchOffset       :float(24)        default(0.0), not null
#  CameraYawOffset         :float(24)        default(0.0), not null
#  FacingLimitLeft         :float(24)        default(0.0), not null
#  FacingLimitRight        :float(24)        default(0.0), not null
#  Flags                   :integer          default(0), not null
#  ID                      :integer          default(0), not null, primary key
#  MouseLookOffsetPitch    :float(24)        default(0.0), not null
#  MsslTrgtArcRepeat       :float(24)        default(0.0), not null
#  MsslTrgtArcSpeed        :float(24)        default(0.0), not null
#  MsslTrgtArcTexture      :string(100)
#  MsslTrgtArcWidth        :float(24)        default(0.0), not null
#  MsslTrgtEndOpacity      :float(24)        default(0.0), not null
#  MsslTrgtImpactModel_1   :string(100)
#  MsslTrgtImpactModel_2   :string(100)
#  MsslTrgtImpactRadius_1  :float(24)        default(0.0), not null
#  MsslTrgtImpactRadius_2  :float(24)        default(0.0), not null
#  MsslTrgtImpactTexRadius :float(24)        default(0.0), not null
#  MsslTrgtImpactTexture   :string(100)
#  MsslTrgtMouseLingering  :float(24)        default(0.0), not null
#  MsslTrgtPitchLingering  :float(24)        default(0.0), not null
#  MsslTrgtTurnLingering   :float(24)        default(0.0), not null
#  PitchMax                :float(24)        default(0.0), not null
#  PitchMin                :float(24)        default(0.0), not null
#  PitchSpeed              :float(24)        default(0.0), not null
#  PowerDisplayID_1        :integer          default(0), not null
#  PowerDisplayID_2        :integer          default(0), not null
#  PowerDisplayID_3        :integer          default(0), not null
#  SeatID_1                :integer          default(0), not null
#  SeatID_2                :integer          default(0), not null
#  SeatID_3                :integer          default(0), not null
#  SeatID_4                :integer          default(0), not null
#  SeatID_5                :integer          default(0), not null
#  SeatID_6                :integer          default(0), not null
#  SeatID_7                :integer          default(0), not null
#  SeatID_8                :integer          default(0), not null
#  TurnSpeed               :float(24)        default(0.0), not null
#  UilocomotionType        :integer          default(0), not null
#  VehicleUIIndicatorID    :integer          default(0), not null
#
module World
  class VehicleDbc < WorldApplicationRecord
    self.table_name = 'vehicle_dbc'
    self.primary_key = 'ID'
  end
end
