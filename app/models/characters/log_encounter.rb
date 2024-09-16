# frozen_string_literal: true

# == Schema Information
#
# Table name: log_encounter
#
#  creditEntry :integer          unsigned, not null
#  creditType  :integer          unsigned, not null
#  difficulty  :integer          unsigned, not null
#  map         :integer          unsigned, not null
#  playersInfo :text(65535)      not null
#  time        :datetime         not null
#
module Characters
  class LogEncounter < CharactersApplicationRecord
    self.table_name = 'log_encounter'
  end
end
