# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobjectartkit_dbc
#
#  Attach_Model_1 :integer          default(0), not null
#  Attach_Model_2 :integer          default(0), not null
#  Attach_Model_3 :integer          default(0), not null
#  Attach_Model_4 :integer          default(0), not null
#  ID             :integer          default(0), not null, primary key
#  Texture_1      :integer          default(0), not null
#  Texture_2      :integer          default(0), not null
#  Texture_3      :integer          default(0), not null
#
module World
  class GameobjectartkitDbc < WorldApplicationRecord
    self.table_name = 'gameobjectartkit_dbc'
    self.primary_key = 'ID'
  end
end
