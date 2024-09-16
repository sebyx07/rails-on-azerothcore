# frozen_string_literal: true

# == Schema Information
#
# Table name: updates
#
#  hash(sha1 hash of the sql file.)                     :string(40)       default("")
#  name(filename with extension of the update.)         :string(200)      not null, primary key
#  speed(time the query takes to apply in ms.)          :integer          default(0), unsigned, not null
#  state(defines if an update is released or archived.) :string           default("RELEASED"), not null
#  timestamp(timestamp when the query was applied.)     :datetime         not null
#
module World
  class Update < WorldApplicationRecord
    self.table_name = 'updates'
    self.primary_key = 'name'
  end
end
