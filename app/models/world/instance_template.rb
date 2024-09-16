# frozen_string_literal: true

# == Schema Information
#
# Table name: instance_template
#
#  allowMount :integer          default(0), unsigned, not null
#  map        :integer          unsigned, not null, primary key
#  parent     :integer          unsigned, not null
#  script     :string(128)      default(""), not null
#
module World
  class InstanceTemplate < WorldApplicationRecord
    self.table_name = 'instance_template'
    self.primary_key = :map
  end
end
