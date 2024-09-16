# frozen_string_literal: true

# == Schema Information
#
# Table name: petition
#
#  name         :string(24)       not null
#  ownerguid    :integer          unsigned, not null, primary key
#  petitionguid :integer          default(0), unsigned
#  type         :integer          default(0), unsigned, not null, primary key
#
# Indexes
#
#  index_ownerguid_petitionguid  (ownerguid,petitionguid) UNIQUE
#
module Characters
  class Petition < CharactersApplicationRecord
    self.table_name = 'petition'
    self.primary_key = %i[ownerguid type]
  end
end
