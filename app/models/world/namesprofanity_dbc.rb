# frozen_string_literal: true

# == Schema Information
#
# Table name: namesprofanity_dbc
#
#  ID          :integer          unsigned, not null, primary key
#  LanguagueID :integer          not null
#  Pattern     :text(255)        not null
#
module World
  class NamesprofanityDbc < WorldApplicationRecord
    self.table_name = 'namesprofanity_dbc'
    self.primary_key = 'ID'
  end
end
