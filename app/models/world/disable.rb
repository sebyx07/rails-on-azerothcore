# frozen_string_literal: true

# == Schema Information
#
# Table name: disables
#
#  comment    :string(255)      default(""), not null
#  entry      :integer          unsigned, not null, primary key
#  flags      :integer          default(0), unsigned, not null
#  params_0   :string(255)      default(""), not null
#  params_1   :string(255)      default(""), not null
#  sourceType :integer          unsigned, not null, primary key
#
module World
  class Disable < WorldApplicationRecord
    self.table_name = 'disables'
    self.primary_key = %i[entry sourceType]
  end
end
