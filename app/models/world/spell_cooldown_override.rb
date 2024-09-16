# frozen_string_literal: true

# == Schema Information
#
# Table name: spell_cooldown_overrides
#
#  CategoryRecoveryTime  :integer          default(0), unsigned, not null
#  Comment               :text(65535)
#  Id                    :integer          unsigned, not null, primary key
#  RecoveryTime          :integer          default(0), unsigned, not null
#  StartRecoveryCategory :integer          default(0), unsigned, not null
#  StartRecoveryTime     :integer          default(0), unsigned, not null
#
module World
  class SpellCooldownOverride < WorldApplicationRecord
    self.table_name = 'spell_cooldown_overrides'
    self.primary_key = 'Id'
  end
end
