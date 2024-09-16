# frozen_string_literal: true

# == Schema Information
#
# Table name: npc_text
#
#  BroadcastTextID0 :integer          default(0), not null
#  BroadcastTextID1 :integer          default(0), not null
#  BroadcastTextID2 :integer          default(0), not null
#  BroadcastTextID3 :integer          default(0), not null
#  BroadcastTextID4 :integer          default(0), not null
#  BroadcastTextID5 :integer          default(0), not null
#  BroadcastTextID6 :integer          default(0), not null
#  BroadcastTextID7 :integer          default(0), not null
#  ID               :integer          default(0), unsigned, not null, primary key
#  Probability0     :float(24)        default(0.0), not null
#  Probability1     :float(24)        default(0.0), not null
#  Probability2     :float(24)        default(0.0), not null
#  Probability3     :float(24)        default(0.0), not null
#  Probability4     :float(24)        default(0.0), not null
#  Probability5     :float(24)        default(0.0), not null
#  Probability6     :float(24)        default(0.0), not null
#  Probability7     :float(24)        default(0.0), not null
#  VerifiedBuild    :integer
#  em0_0            :integer          default(0), unsigned, not null
#  em0_1            :integer          default(0), unsigned, not null
#  em0_2            :integer          default(0), unsigned, not null
#  em0_3            :integer          default(0), unsigned, not null
#  em0_4            :integer          default(0), unsigned, not null
#  em0_5            :integer          default(0), unsigned, not null
#  em1_0            :integer          default(0), unsigned, not null
#  em1_1            :integer          default(0), unsigned, not null
#  em1_2            :integer          default(0), unsigned, not null
#  em1_3            :integer          default(0), unsigned, not null
#  em1_4            :integer          default(0), unsigned, not null
#  em1_5            :integer          default(0), unsigned, not null
#  em2_0            :integer          default(0), unsigned, not null
#  em2_1            :integer          default(0), unsigned, not null
#  em2_2            :integer          default(0), unsigned, not null
#  em2_3            :integer          default(0), unsigned, not null
#  em2_4            :integer          default(0), unsigned, not null
#  em2_5            :integer          default(0), unsigned, not null
#  em3_0            :integer          default(0), unsigned, not null
#  em3_1            :integer          default(0), unsigned, not null
#  em3_2            :integer          default(0), unsigned, not null
#  em3_3            :integer          default(0), unsigned, not null
#  em3_4            :integer          default(0), unsigned, not null
#  em3_5            :integer          default(0), unsigned, not null
#  em4_0            :integer          default(0), unsigned, not null
#  em4_1            :integer          default(0), unsigned, not null
#  em4_2            :integer          default(0), unsigned, not null
#  em4_3            :integer          default(0), unsigned, not null
#  em4_4            :integer          default(0), unsigned, not null
#  em4_5            :integer          default(0), unsigned, not null
#  em5_0            :integer          default(0), unsigned, not null
#  em5_1            :integer          default(0), unsigned, not null
#  em5_2            :integer          default(0), unsigned, not null
#  em5_3            :integer          default(0), unsigned, not null
#  em5_4            :integer          default(0), unsigned, not null
#  em5_5            :integer          default(0), unsigned, not null
#  em6_0            :integer          default(0), unsigned, not null
#  em6_1            :integer          default(0), unsigned, not null
#  em6_2            :integer          default(0), unsigned, not null
#  em6_3            :integer          default(0), unsigned, not null
#  em6_4            :integer          default(0), unsigned, not null
#  em6_5            :integer          default(0), unsigned, not null
#  em7_0            :integer          default(0), unsigned, not null
#  em7_1            :integer          default(0), unsigned, not null
#  em7_2            :integer          default(0), unsigned, not null
#  em7_3            :integer          default(0), unsigned, not null
#  em7_4            :integer          default(0), unsigned, not null
#  em7_5            :integer          default(0), unsigned, not null
#  lang0            :integer          default(0), unsigned, not null
#  lang1            :integer          default(0), unsigned, not null
#  lang2            :integer          default(0), unsigned, not null
#  lang3            :integer          default(0), unsigned, not null
#  lang4            :integer          default(0), unsigned, not null
#  lang5            :integer          default(0), unsigned, not null
#  lang6            :integer          default(0), unsigned, not null
#  lang7            :integer          default(0), unsigned, not null
#  text0_0          :text(4294967295)
#  text0_1          :text(4294967295)
#  text1_0          :text(4294967295)
#  text1_1          :text(4294967295)
#  text2_0          :text(4294967295)
#  text2_1          :text(4294967295)
#  text3_0          :text(4294967295)
#  text3_1          :text(4294967295)
#  text4_0          :text(4294967295)
#  text4_1          :text(4294967295)
#  text5_0          :text(4294967295)
#  text5_1          :text(4294967295)
#  text6_0          :text(4294967295)
#  text6_1          :text(4294967295)
#  text7_0          :text(4294967295)
#  text7_1          :text(4294967295)
#
module World
  class NpcText < WorldApplicationRecord
    self.table_name = 'npc_text'
    self.primary_key = 'ID'
  end
end
