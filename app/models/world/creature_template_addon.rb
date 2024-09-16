# frozen_string_literal: true

# == Schema Information
#
# Table name: creature_template_addon
#
#  auras                  :text(65535)
#  bytes1                 :integer          default(0), unsigned, not null
#  bytes2                 :integer          default(0), unsigned, not null
#  emote                  :integer          default(0), unsigned, not null
#  entry                  :integer          default(0), unsigned, not null, primary key
#  mount                  :integer          default(0), unsigned, not null
#  visibilityDistanceType :integer          default(0), unsigned, not null
#  path_id                :integer          default(0), unsigned, not null
#
module World
  class CreatureTemplateAddon < WorldApplicationRecord
    self.table_name = 'creature_template_addon'
    self.primary_key = 'entry'
    belongs_to :path, optional: true
  end
end
