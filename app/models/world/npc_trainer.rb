# frozen_string_literal: true

# == Schema Information
#
# Table name: npc_trainer
#
#  ID           :integer          default(0), unsigned, not null, primary key
#  MoneyCost    :integer          default(0), unsigned, not null
#  ReqLevel     :integer          default(0), unsigned, not null
#  ReqSkillLine :integer          default(0), unsigned, not null
#  ReqSkillRank :integer          default(0), unsigned, not null
#  ReqSpell     :integer          default(0), unsigned, not null
#  SpellID      :integer          default(0), not null, primary key
#
module World
  class NpcTrainer < WorldApplicationRecord
    self.table_name = 'npc_trainer'
    self.primary_key = %w[SpellID ID]
  end
end
