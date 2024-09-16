# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_group_stack_rules
#
#  description :string(150)      default(""), not null
#  stack_rule  :integer          default(0), not null
#  group_id    :integer          default(0), unsigned, not null, primary key
#
module World
  class SpellGroupStackRule < WorldApplicationRecord
    self.table_name = 'spell_group_stack_rules'
    self.primary_key = 'group_id'
  end
end
