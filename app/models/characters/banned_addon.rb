# frozen_string_literal: true

# == Schema Information
#
# Table name: banned_addons
#
#  Id        :integer          unsigned, not null, primary key
#  Name      :string(255)      not null
#  Timestamp :datetime         not null
#  Version   :string(255)      default(""), not null
#
# Indexes
#
#  idx_name_ver  (Name,Version) UNIQUE
#
module Characters
  class BannedAddon < CharactersApplicationRecord
    self.table_name = 'banned_addons'
    self.primary_key = 'Id'
  end
end
