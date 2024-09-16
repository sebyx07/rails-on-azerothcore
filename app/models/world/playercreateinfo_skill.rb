# frozen_string_literal: true

# == Schema Information
#
# Table name: playercreateinfo_skills
#
#  classMask :integer          unsigned, not null, primary key
#  comment   :string(255)
#  raceMask  :integer          unsigned, not null, primary key
#  rank      :integer          default(0), unsigned, not null
#  skill     :integer          unsigned, not null, primary key
#
module World
  class PlayercreateinfoSkill < WorldApplicationRecord
    self.table_name = 'playercreateinfo_skills'
    self.primary = [:raceMask, :classMask, :skill]
  end
end
