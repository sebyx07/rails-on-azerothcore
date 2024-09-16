# frozen_string_literal: true

# == Schema Information
#
# Table name: npc_text_locale
#
#  ID      :integer          default(0), unsigned, not null, primary key
#  Locale  :string(4)        not null, primary key
#  Text0_0 :text(4294967295)
#  Text0_1 :text(4294967295)
#  Text1_0 :text(4294967295)
#  Text1_1 :text(4294967295)
#  Text2_0 :text(4294967295)
#  Text2_1 :text(4294967295)
#  Text3_0 :text(4294967295)
#  Text3_1 :text(4294967295)
#  Text4_0 :text(4294967295)
#  Text4_1 :text(4294967295)
#  Text5_0 :text(4294967295)
#  Text5_1 :text(4294967295)
#  Text6_0 :text(4294967295)
#  Text6_1 :text(4294967295)
#  Text7_0 :text(4294967295)
#  Text7_1 :text(4294967295)
#
module World
  class NpcTextLocale < WorldApplicationRecord
    self.table_name = 'npc_text_locale'
    self.primary_key = [:ID, :Locale]
  end
end
