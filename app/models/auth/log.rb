# frozen_string_literal: true

# == Schema Information
#
# Table name: logs
#
#  level  :integer          default(0), unsigned, not null
#  realm  :integer          unsigned, not null
#  string :text(65535)
#  time   :integer          unsigned, not null
#  type   :string(250)      not null
#
module Auth
  class Log < AuthApplicationRecord
    self.table_name = 'logs'
  end
end
