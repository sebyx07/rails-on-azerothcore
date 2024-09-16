# frozen_string_literal: true

# == Schema Information
#
# Table name: warden_checks
#
#  id      :integer          unsigned, not null, primary key
#  address :integer          unsigned
#  comment :string(50)
#  data    :string(48)
#  length  :integer          unsigned
#  result  :string(24)
#  str     :string(170)
#  type    :integer          unsigned
#
module World
  class WardenCheck < WorldApplicationRecord
    self.table_name = 'warden_checks'
    self.primary_key = 'id'
  end
end
