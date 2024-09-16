# frozen_string_literal: true

# == Schema Information
#
# Table name: autobroadcast
#
#  id      :integer          unsigned, not null, primary key
#  realmid :integer          default(-1), not null, primary key
#  text    :text(4294967295) not null
#  weight  :integer          default(1), unsigned
#
module Auth
  class Autobroadcast < AuthApplicationRecord
    self.table_name = 'autobroadcast'
    self.primary_key = %i[id realmid]
  end
end
