# frozen_string_literal: true

# == Schema Information
#
# Table name: spellvisual_dbc
#
#  AnimEventSoundID             :integer          default(0), not null
#  CastKit                      :integer          default(0), not null
#  CasterImpactKit              :integer          default(0), not null
#  ChannelKit                   :integer          default(0), not null
#  Flags                        :integer          default(0), not null
#  HasMissile                   :integer          default(0), not null
#  ID                           :integer          default(0), not null, primary key
#  ImpactAreaKit                :integer          default(0), not null
#  ImpactKit                    :integer          default(0), not null
#  InstantAreaKit               :integer          default(0), not null
#  MissileAttachment            :integer          default(0), not null
#  MissileCastOffsetX           :float(24)        default(0.0), not null
#  MissileCastOffsetY           :float(24)        default(0.0), not null
#  MissileCastOffsetZ           :float(24)        default(0.0), not null
#  MissileDestinationAttachment :integer          default(0), not null
#  MissileFollowGroundApproach  :integer          default(0), not null
#  MissileFollowGroundDropSpeed :integer          default(0), not null
#  MissileFollowGroundFlags     :integer          default(0), not null
#  MissileFollowGroundHeight    :integer          default(0), not null
#  MissileImpactOffsetX         :float(24)        default(0.0), not null
#  MissileImpactOffsetY         :float(24)        default(0.0), not null
#  MissileImpactOffsetZ         :float(24)        default(0.0), not null
#  MissileModel                 :integer          default(0), not null
#  MissileMotion                :integer          default(0), not null
#  MissilePathType              :integer          default(0), not null
#  MissileSound                 :integer          default(0), not null
#  MissileTargetingKit          :integer          default(0), not null
#  PersistentAreaKit            :integer          default(0), not null
#  PrecastKit                   :integer          default(0), not null
#  StateDoneKit                 :integer          default(0), not null
#  StateKit                     :integer          default(0), not null
#  TargetImpactKit              :integer          default(0), not null
#
module World
  class SpellvisualDbc < WorldApplicationRecord
    self.table_name = 'spellvisual_dbc'
    self.primary_key = 'ID'
  end
end
