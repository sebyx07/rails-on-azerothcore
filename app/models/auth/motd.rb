# frozen_string_literal: true

# == Schema Information
#
# Table name: motd
#
#  realmid :integer          not null, primary key
#  text    :text(4294967295)
#
module Auth
  class Motd < AuthApplicationRecord
    self.table_name = 'motd'
    self.primary_key = 'realmid'
  end
end
