# frozen_string_literal: true

# == Schema Information
#
# Table name: spellitemenchantmentcondition_dbc
#
#  ID               :integer          default(0), not null, primary key
#  Logic_1          :integer          default(0), unsigned, not null
#  Logic_2          :integer          default(0), unsigned, not null
#  Logic_3          :integer          default(0), unsigned, not null
#  Logic_4          :integer          default(0), unsigned, not null
#  Logic_5          :integer          default(0), unsigned, not null
#  Lt_OperandType_1 :integer          default(0), unsigned, not null
#  Lt_OperandType_2 :integer          default(0), unsigned, not null
#  Lt_OperandType_3 :integer          default(0), unsigned, not null
#  Lt_OperandType_4 :integer          default(0), unsigned, not null
#  Lt_OperandType_5 :integer          default(0), unsigned, not null
#  Lt_Operand_1     :integer          default(0), not null
#  Lt_Operand_2     :integer          default(0), not null
#  Lt_Operand_3     :integer          default(0), not null
#  Lt_Operand_4     :integer          default(0), not null
#  Lt_Operand_5     :integer          default(0), not null
#  Operator_1       :integer          default(0), unsigned, not null
#  Operator_2       :integer          default(0), unsigned, not null
#  Operator_3       :integer          default(0), unsigned, not null
#  Operator_4       :integer          default(0), unsigned, not null
#  Operator_5       :integer          default(0), unsigned, not null
#  Rt_OperandType_1 :integer          default(0), unsigned, not null
#  Rt_OperandType_2 :integer          default(0), unsigned, not null
#  Rt_OperandType_3 :integer          default(0), unsigned, not null
#  Rt_OperandType_4 :integer          default(0), unsigned, not null
#  Rt_OperandType_5 :integer          default(0), unsigned, not null
#  Rt_Operand_1     :integer          default(0), not null
#  Rt_Operand_2     :integer          default(0), not null
#  Rt_Operand_3     :integer          default(0), not null
#  Rt_Operand_4     :integer          default(0), not null
#  Rt_Operand_5     :integer          default(0), not null
#
module World
  class SpellitemenchantmentconditionDbc < WorldApplicationRecord
    self.table_name = 'spellitemenchantmentcondition_dbc'
    self.primary_key = 'ID'
  end
end
