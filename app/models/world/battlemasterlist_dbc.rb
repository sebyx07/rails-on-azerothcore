# frozen_string_literal: true

# == Schema Information
#
# Table name: battlemasterlist_dbc
#
#  GroupsAllowed     :integer          default(0), not null
#  HolidayWorldState :integer          default(0), not null
#  ID                :integer          default(0), not null, primary key
#  InstanceType      :integer          default(0), not null
#  MapID_1           :integer          default(0), not null
#  MapID_2           :integer          default(0), not null
#  MapID_3           :integer          default(0), not null
#  MapID_4           :integer          default(0), not null
#  MapID_5           :integer          default(0), not null
#  MapID_6           :integer          default(0), not null
#  MapID_7           :integer          default(0), not null
#  MapID_8           :integer          default(0), not null
#  MaxGroupSize      :integer          default(0), not null
#  Maxlevel          :integer          default(0), not null
#  Minlevel          :integer          default(0), not null
#  Name_Lang_Mask    :integer          default(0), unsigned, not null
#  Name_Lang_Unk     :string(100)
#  Name_Lang_deDE    :string(100)
#  Name_Lang_enCN    :string(100)
#  Name_Lang_enGB    :string(100)
#  Name_Lang_enTW    :string(100)
#  Name_Lang_enUS    :string(100)
#  Name_Lang_esES    :string(100)
#  Name_Lang_esMX    :string(100)
#  Name_Lang_frFR    :string(100)
#  Name_Lang_itIT    :string(100)
#  Name_Lang_koKR    :string(100)
#  Name_Lang_ptBR    :string(100)
#  Name_Lang_ptPT    :string(100)
#  Name_Lang_ruRU    :string(100)
#  Name_Lang_zhCN    :string(100)
#  Name_Lang_zhTW    :string(100)
#
module World
  class BattlemasterlistDbc < WorldApplicationRecord
    self.table_name = 'battlemasterlist_dbc'
    self.primary_key = 'ID'
  end
end
