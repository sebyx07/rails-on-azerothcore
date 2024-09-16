# frozen_string_literal: true

# == Schema Information
#
# Table name: version
#
#  core_revision                                  :string(120)
#  core_version(Core revision dumped at startup.) :string(255)      default(""), not null, primary key
#  db_version(Version of world DB.)               :string(120)
#  cache_id                                       :integer          default(0)
#
module World
  class Version < WorldApplicationRecord
    self.table_name = 'version'
    self.primary_key = 'core_version'
    belongs_to :cache, optional: true
  end
end
