# frozen_string_literal: true

# == Schema Information
#
# Table name: character_settings
#
#  data   :text(65535)
#  guid   :integer          unsigned, not null, primary key
#  source :string(40)       not null, primary key
#
module Characters
  class CharacterSetting < CharactersApplicationRecord
    self.table_name = 'character_settings'
    self.primary_key = %i[guid source]
  end
end
