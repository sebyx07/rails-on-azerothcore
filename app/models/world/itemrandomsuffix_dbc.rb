# frozen_string_literal: true

# == Schema Information
#
# Table name: itemrandomsuffix_dbc
#
#  AllocationPct_1 :integer          default(0), not null
#  AllocationPct_2 :integer          default(0), not null
#  AllocationPct_3 :integer          default(0), not null
#  AllocationPct_4 :integer          default(0), not null
#  AllocationPct_5 :integer          default(0), not null
#  Enchantment_1   :integer          default(0), not null
#  Enchantment_2   :integer          default(0), not null
#  Enchantment_3   :integer          default(0), not null
#  Enchantment_4   :integer          default(0), not null
#  Enchantment_5   :integer          default(0), not null
#  ID              :integer          default(0), not null, primary key
#  InternalName    :string(100)
#  Name_Lang_Mask  :integer          default(0), unsigned, not null
#  Name_Lang_Unk   :string(100)
#  Name_Lang_deDE  :string(100)
#  Name_Lang_enCN  :string(100)
#  Name_Lang_enGB  :string(100)
#  Name_Lang_enTW  :string(100)
#  Name_Lang_enUS  :string(100)
#  Name_Lang_esES  :string(100)
#  Name_Lang_esMX  :string(100)
#  Name_Lang_frFR  :string(100)
#  Name_Lang_itIT  :string(100)
#  Name_Lang_koKR  :string(100)
#  Name_Lang_ptBR  :string(100)
#  Name_Lang_ptPT  :string(100)
#  Name_Lang_ruRU  :string(100)
#  Name_Lang_zhCN  :string(100)
#  Name_Lang_zhTW  :string(100)
#
module World
  class ItemrandomsuffixDbc < WorldApplicationRecord
    self.table_name = 'itemrandomsuffix_dbc'
    self.primary_key = :ID
  end
end
