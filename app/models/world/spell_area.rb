# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_area
#
#  area               :integer          default(0), unsigned, not null, primary key
#  aura_spell         :integer          default(0), not null, primary key
#  autocast           :integer          default(0), unsigned, not null
#  gender             :integer          default(2), unsigned, not null, primary key
#  quest_end          :integer          default(0), unsigned, not null
#  quest_end_status   :integer          default(11), not null
#  quest_start        :integer          default(0), unsigned, not null, primary key
#  quest_start_status :integer          default(64), not null
#  racemask           :integer          default(0), unsigned, not null, primary key
#  spell              :integer          default(0), unsigned, not null, primary key
#
module World
  class SpellArea < WorldApplicationRecord
    self.table_name = 'spell_area'
    self.primary_keys = 'area', 'aura'
  end
end
