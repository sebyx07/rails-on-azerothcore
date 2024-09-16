# frozen_string_literal: true

# == Schema Information
#
# Table name: build_info
#
#  bugfixVersion   :integer
#  build           :integer          not null, primary key
#  hotfixVersion   :string(3)
#  mac64AuthSeed   :string(32)
#  macChecksumSeed :string(40)
#  majorVersion    :integer
#  minorVersion    :integer
#  win64AuthSeed   :string(32)
#  winAuthSeed     :string(32)
#  winChecksumSeed :string(40)
#
module Auth
  class BuildInfo < AuthApplicationRecord
    self.table_name = 'build_info'
    self.primary_key = 'build'
  end
end
