# frozen_string_literal: true

# == Schema Information
#
# Table name: group_member
#
#  guid        :integer          unsigned, not null
#  memberFlags :integer          default(0), unsigned, not null
#  memberGuid  :integer          unsigned, not null, primary key
#  roles       :integer          default(0), unsigned, not null
#  subgroup    :integer          default(0), unsigned, not null
#
module Characters
  class GroupMember < CharactersApplicationRecord
    self.table_name = 'group_member'
    self.primary_key = :memberGuid
  end
end
