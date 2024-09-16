# frozen_string_literal: true

# == Schema Information
#
# Table name: namesreserved_dbc
#
#  ID          :integer          unsigned, not null, primary key
#  LanguagueID :integer          not null
#  Pattern     :text(255)        not null
#
module World
  class NamesreservedDbc < WorldApplicationRecord
    self.table_name = 'namesreserved_dbc'
    self.primary_key = 'ID'
  end
end
