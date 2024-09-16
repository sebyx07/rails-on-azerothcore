# frozen_string_literal: true

# == Schema Information
#
# Table name: vehicleseat_dbc
#
#  AttachmentID            :integer          default(0), not null
#  AttachmentOffsetX       :float(24)        default(0.0), not null
#  AttachmentOffsetY       :float(24)        default(0.0), not null
#  AttachmentOffsetZ       :float(24)        default(0.0), not null
#  CameraEnteringDelay     :float(24)        default(0.0), not null
#  CameraEnteringDuration  :float(24)        default(0.0), not null
#  CameraEnteringZoom      :float(24)        default(0.0), not null
#  CameraExitingDelay      :float(24)        default(0.0), not null
#  CameraExitingDuration   :float(24)        default(0.0), not null
#  CameraFacingChaseRate   :float(24)        default(0.0), not null
#  CameraOffsetX           :float(24)        default(0.0), not null
#  CameraOffsetY           :float(24)        default(0.0), not null
#  CameraOffsetZ           :float(24)        default(0.0), not null
#  CameraPosChaseRate      :float(24)        default(0.0), not null
#  CameraSeatZoomMax       :float(24)        default(0.0), not null
#  CameraSeatZoomMin       :float(24)        default(0.0), not null
#  EnterAnimLoop           :integer          default(0), not null
#  EnterAnimStart          :integer          default(0), not null
#  EnterGravity            :float(24)        default(0.0), not null
#  EnterMaxArcHeight       :float(24)        default(0.0), not null
#  EnterMaxDuration        :float(24)        default(0.0), not null
#  EnterMinArcHeight       :float(24)        default(0.0), not null
#  EnterMinDuration        :float(24)        default(0.0), not null
#  EnterPreDelay           :float(24)        default(0.0), not null
#  EnterSpeed              :float(24)        default(0.0), not null
#  EnterUISoundID          :integer          default(0), not null
#  ExitAnimEnd             :integer          default(0), not null
#  ExitAnimLoop            :integer          default(0), not null
#  ExitAnimStart           :integer          default(0), not null
#  ExitGravity             :float(24)        default(0.0), not null
#  ExitMaxArcHeight        :float(24)        default(0.0), not null
#  ExitMaxDuration         :float(24)        default(0.0), not null
#  ExitMinArcHeight        :float(24)        default(0.0), not null
#  ExitMinDuration         :float(24)        default(0.0), not null
#  ExitPreDelay            :float(24)        default(0.0), not null
#  ExitSpeed               :float(24)        default(0.0), not null
#  ExitUISoundID           :integer          default(0), not null
#  Flags                   :integer          default(0), not null
#  FlagsB                  :integer          default(0), not null
#  ID                      :integer          default(0), not null, primary key
#  PassengerAttachmentID   :integer          default(0), not null
#  PassengerPitch          :float(24)        default(0.0), not null
#  PassengerRoll           :float(24)        default(0.0), not null
#  PassengerYaw            :float(24)        default(0.0), not null
#  RideAnimLoop            :integer          default(0), not null
#  RideAnimStart           :integer          default(0), not null
#  RideUpperAnimLoop       :integer          default(0), not null
#  RideUpperAnimStart      :integer          default(0), not null
#  UiSkin                  :integer          default(0), not null
#  VehicleAbilityDisplay   :integer          default(0), not null
#  VehicleEnterAnim        :integer          default(0), not null
#  VehicleEnterAnimBone    :integer          default(0), not null
#  VehicleEnterAnimDelay   :float(24)        default(0.0), not null
#  VehicleExitAnim         :integer          default(0), not null
#  VehicleExitAnimBone     :integer          default(0), not null
#  VehicleExitAnimDelay    :float(24)        default(0.0), not null
#  VehicleRideAnimLoop     :integer          default(0), not null
#  VehicleRideAnimLoopBone :integer          default(0), not null
#
module World
  class VehicleseatDbc < WorldApplicationRecord
    self.table_name = 'vehicleseat_dbc'
    self.primary_key = 'ID'
  end
end
