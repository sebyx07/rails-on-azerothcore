# frozen_string_literal: true

# == Schema Information
#
# Table name: randproppoints_dbc
#
#  Epic_1     :integer          default(0), not null
#  Epic_2     :integer          default(0), not null
#  Epic_3     :integer          default(0), not null
#  Epic_4     :integer          default(0), not null
#  Epic_5     :integer          default(0), not null
#  Good_1     :integer          default(0), not null
#  Good_2     :integer          default(0), not null
#  Good_3     :integer          default(0), not null
#  Good_4     :integer          default(0), not null
#  Good_5     :integer          default(0), not null
#  ID         :integer          default(0), not null, primary key
#  Superior_1 :integer          default(0), not null
#  Superior_2 :integer          default(0), not null
#  Superior_3 :integer          default(0), not null
#  Superior_4 :integer          default(0), not null
#  Superior_5 :integer          default(0), not null
#
module World
  class RandproppointsDbc < WorldApplicationRecord
    self.table_name = 'randproppoints_dbc'
    self.primary_key = 'ID'
  end
end
