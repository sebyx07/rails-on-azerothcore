# frozen_string_literal: true

# == Schema Information
#
# Table name: character_account_data
#
#  data :binary(65535)    not null
#  guid :integer          default(0), unsigned, not null, primary key
#  time :integer          default(0), unsigned, not null
#  type :integer          default(0), unsigned, not null, primary key
#
module Characters
  class CharacterAccountDatum < CharactersApplicationRecord
    self.table_name = 'character_account_data'
    self.primary_key = %i[guid type]
  end
end
