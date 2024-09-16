# frozen_string_literal: true

# == Schema Information
#
# Table name: petition_sign
#
#  ownerguid      :integer          unsigned, not null
#  petitionguid   :integer          default(0), unsigned, not null, primary key
#  player_account :integer          default(0), unsigned, not null
#  playerguid     :integer          default(0), unsigned, not null, primary key
#  type           :integer          default(0), unsigned, not null
#
# Indexes
#
#  Idx_ownerguid   (ownerguid)
#  Idx_playerguid  (playerguid)
#
module Characters
  class PetitionSign < CharactersApplicationRecord
    self.table_name = 'petition_sign'
    self.primary_key = %i[petitionguid playerguid]
  end
end
