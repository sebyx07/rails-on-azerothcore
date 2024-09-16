# frozen_string_literal: true

# == Schema Information
#
# Table name: character_brew_of_the_month
#
#  guid        :integer          unsigned, not null, primary key
#  lastEventId :integer          default(0), unsigned, not null
#
module Characters
  class CharacterBrewOfTheMonth < CharactersApplicationRecord
    self.table_name = 'character_brew_of_the_month'
    self.primary_key = :guid
  end
end
