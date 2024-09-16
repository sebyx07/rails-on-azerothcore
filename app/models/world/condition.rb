# frozen_string_literal: true

# == Schema Information
#
# Table name: conditions
#
#  Comment                  :string(255)
#  ConditionTarget          :integer          default(0), unsigned, not null, primary key
#  ConditionTypeOrReference :integer          default(0), not null, primary key
#  ConditionValue1          :integer          default(0), unsigned, not null, primary key
#  ConditionValue2          :integer          default(0), unsigned, not null, primary key
#  ConditionValue3          :integer          default(0), unsigned, not null, primary key
#  ElseGroup                :integer          default(0), unsigned, not null, primary key
#  ErrorTextId              :integer          default(0), unsigned, not null
#  ErrorType                :integer          default(0), unsigned, not null
#  NegativeCondition        :integer          default(0), unsigned, not null
#  ScriptName               :string(64)       default(""), not null
#  SourceEntry              :integer          default(0), not null, primary key
#  SourceGroup              :integer          default(0), unsigned, not null, primary key
#  SourceId                 :integer          default(0), not null, primary key
#  SourceTypeOrReferenceId  :integer          default(0), not null, primary key
#
module World
  class Condition < WorldApplicationRecord
    self.table_name = 'conditions'
    self.primary_key = %w[ConditionTarget ConditionTypeOrReference ConditionValue1
      ConditionValue2 ConditionValue3 ElseGroup SourceEntry SourceGroup SourceId SourceTypeOrReferenceId
    ]
  end
end
