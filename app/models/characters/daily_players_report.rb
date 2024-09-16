# frozen_string_literal: true

# == Schema Information
#
# Table name: daily_players_reports
#
#  antiknockback_reports    :bigint           default(0), unsigned, not null
#  antiswim_reports         :bigint           default(0), unsigned, not null
#  average                  :float(24)        default(0.0), not null
#  climb_reports            :bigint           default(0), unsigned, not null
#  counter_measures_reports :bigint           default(0), unsigned, not null
#  creation_time            :integer          default(0), unsigned, not null
#  fly_reports              :bigint           default(0), unsigned, not null
#  gravity_reports          :bigint           default(0), unsigned, not null
#  guid                     :integer          default(0), unsigned, not null, primary key
#  ignorecontrol_reports    :bigint           default(0), unsigned, not null
#  jump_reports             :bigint           default(0), unsigned, not null
#  no_fall_damage_reports   :bigint           default(0), unsigned, not null
#  op_ack_hack_reports      :bigint           default(0), unsigned, not null
#  speed_reports            :bigint           default(0), unsigned, not null
#  teleport_reports         :bigint           default(0), unsigned, not null
#  teleportplane_reports    :bigint           default(0), unsigned, not null
#  total_reports            :bigint           default(0), unsigned, not null
#  waterwalk_reports        :bigint           default(0), unsigned, not null
#  zaxis_reports            :bigint           default(0), unsigned, not null
#
module Characters
  class DailyPlayersReport < CharactersApplicationRecord
    self.table_name = 'daily_players_reports'
    self.primary_key = :guid
  end
end
