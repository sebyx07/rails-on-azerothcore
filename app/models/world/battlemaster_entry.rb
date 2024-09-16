# frozen_string_literal: true

# == Schema Information
#
# Table name: battlemaster_entry
#
#  bg_template(Battleground template id) :integer          default(0), unsigned, not null
#  entry(Entry of a creature)            :integer          default(0), unsigned, not null, primary key
#
module World
  class BattlemasterEntry < WorldApplicationRecord
    self.table_name = 'battlemaster_entry'
    self.primary_key = 'entry'
  end
end
