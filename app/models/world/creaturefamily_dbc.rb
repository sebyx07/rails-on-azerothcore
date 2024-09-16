# frozen_string_literal: true

# == Schema Information
#
# Table name: creaturefamily_dbc
#
#  CategoryEnumID :integer          default(0), not null
#  ID             :integer          default(0), not null, primary key
#  IconFile       :string(100)
#  MaxScale       :float(24)        default(0.0), not null
#  MaxScaleLevel  :integer          default(0), not null
#  MinScale       :float(24)        default(0.0), not null
#  MinScaleLevel  :integer          default(0), not null
#  Name_Lang_Mask :integer          default(0), unsigned, not null
#  Name_Lang_Unk  :string(100)
#  Name_Lang_deDE :string(100)
#  Name_Lang_enCN :string(100)
#  Name_Lang_enGB :string(100)
#  Name_Lang_enTW :string(100)
#  Name_Lang_enUS :string(100)
#  Name_Lang_esES :string(100)
#  Name_Lang_esMX :string(100)
#  Name_Lang_frFR :string(100)
#  Name_Lang_itIT :string(100)
#  Name_Lang_koKR :string(100)
#  Name_Lang_ptBR :string(100)
#  Name_Lang_ptPT :string(100)
#  Name_Lang_ruRU :string(100)
#  Name_Lang_zhCN :string(100)
#  Name_Lang_zhTW :string(100)
#  PetFoodMask    :integer          default(0), not null
#  PetTalentType  :integer          default(0), not null
#  SkillLine_1    :integer          default(0), not null
#  SkillLine_2    :integer          default(0), not null
#
module World
  class CreaturefamilyDbc < WorldApplicationRecord
    self.table_name = 'creaturefamily_dbc'
    self.primary_key = 'ID'
  end
end
