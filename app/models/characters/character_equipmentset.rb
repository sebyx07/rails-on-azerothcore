# frozen_string_literal: true

# == Schema Information
#
# Table name: character_equipmentsets
#
#  guid        :integer          default(0), not null
#  iconname    :string(100)      not null
#  ignore_mask :integer          default(0), unsigned, not null
#  item0       :integer          default(0), unsigned, not null
#  item1       :integer          default(0), unsigned, not null
#  item10      :integer          default(0), unsigned, not null
#  item11      :integer          default(0), unsigned, not null
#  item12      :integer          default(0), unsigned, not null
#  item13      :integer          default(0), unsigned, not null
#  item14      :integer          default(0), unsigned, not null
#  item15      :integer          default(0), unsigned, not null
#  item16      :integer          default(0), unsigned, not null
#  item17      :integer          default(0), unsigned, not null
#  item18      :integer          default(0), unsigned, not null
#  item2       :integer          default(0), unsigned, not null
#  item3       :integer          default(0), unsigned, not null
#  item4       :integer          default(0), unsigned, not null
#  item5       :integer          default(0), unsigned, not null
#  item6       :integer          default(0), unsigned, not null
#  item7       :integer          default(0), unsigned, not null
#  item8       :integer          default(0), unsigned, not null
#  item9       :integer          default(0), unsigned, not null
#  name        :string(31)       not null
#  setguid     :bigint           not null, primary key
#  setindex    :integer          default(0), unsigned, not null
#
# Indexes
#
#  Idx_setindex  (setindex)
#  idx_set       (guid,setguid,setindex) UNIQUE
#
module Characters
  class CharacterEquipmentset < CharactersApplicationRecord
    self.table_name = 'character_equipmentsets'
    self.primary_key = :setguid
  end
end
