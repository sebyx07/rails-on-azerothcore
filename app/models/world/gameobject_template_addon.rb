# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject_template_addon
#
#  artkit0 :integer          default(0), not null
#  artkit1 :integer          default(0), not null
#  artkit2 :integer          default(0), not null
#  artkit3 :integer          default(0), not null
#  entry   :integer          default(0), unsigned, not null, primary key
#  faction :integer          default(0), unsigned, not null
#  flags   :integer          default(0), unsigned, not null
#  maxgold :integer          default(0), unsigned, not null
#  mingold :integer          default(0), unsigned, not null
#
module World
  class GameobjectTemplateAddon < WorldApplicationRecord
    self.table_name = 'gameobject_template_addon'
    self.primary_key = 'entry'
  end
end
