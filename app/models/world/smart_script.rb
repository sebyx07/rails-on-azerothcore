# frozen_string_literal: true

# == Schema Information
#
# Table name: smart_scripts
#
#  id                     :integer          default(0), unsigned, not null, primary key
#  action_param1          :integer          default(0), unsigned, not null
#  action_param2          :integer          default(0), unsigned, not null
#  action_param3          :integer          default(0), unsigned, not null
#  action_param4          :integer          default(0), unsigned, not null
#  action_param5          :integer          default(0), unsigned, not null
#  action_param6          :integer          default(0), unsigned, not null
#  action_type            :integer          default(0), unsigned, not null
#  comment(Event Comment) :text(65535)      not null
#  entryorguid            :integer          not null, primary key
#  event_chance           :integer          default(100), unsigned, not null
#  event_flags            :integer          default(0), unsigned, not null
#  event_param1           :integer          default(0), unsigned, not null
#  event_param2           :integer          default(0), unsigned, not null
#  event_param3           :integer          default(0), unsigned, not null
#  event_param4           :integer          default(0), unsigned, not null
#  event_param5           :integer          default(0), unsigned, not null
#  event_param6           :integer          default(0), unsigned, not null
#  event_phase_mask       :integer          default(0), unsigned, not null
#  event_type             :integer          default(0), unsigned, not null
#  link                   :integer          default(0), unsigned, not null
#  source_type            :integer          default(0), unsigned, not null, primary key
#  target_o               :float(24)        default(0.0), not null
#  target_param1          :integer          default(0), unsigned, not null
#  target_param2          :integer          default(0), unsigned, not null
#  target_param3          :integer          default(0), unsigned, not null
#  target_param4          :integer          default(0), unsigned, not null
#  target_type            :integer          default(0), unsigned, not null
#  target_x               :float(24)        default(0.0), not null
#  target_y               :float(24)        default(0.0), not null
#  target_z               :float(24)        default(0.0), not null
#
module World
  class SmartScript < WorldApplicationRecord
    self.table_name = 'smart_scripts'
    self.primary_key = %i[id entryorguid source_type]
  end
end
