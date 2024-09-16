# frozen_string_literal: true

# == Schema Information
#
# Table name: exploration_basexp
#
#  basexp :integer          default(0), not null
#  level  :integer          default(0), unsigned, not null, primary key
#
module World
  class ExplorationBasexp < WorldApplicationRecord
    self.table_name = 'exploration_basexp'
    self.primary_key = 'level'
  end
end
