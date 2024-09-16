# frozen_string_literal: true

# == Schema Information
#
# Table name: soundentries_dbc
#
#  DirectoryBase          :string(100)
#  DistanceCutoff         :float(24)        default(0.0), not null
#  EAXDef                 :integer          default(0), not null
#  File_1                 :string(100)
#  File_10                :string(100)
#  File_2                 :string(100)
#  File_3                 :string(100)
#  File_4                 :string(100)
#  File_5                 :string(100)
#  File_6                 :string(100)
#  File_7                 :string(100)
#  File_8                 :string(100)
#  File_9                 :string(100)
#  Flags                  :integer          default(0), not null
#  Freq_1                 :integer          default(0), not null
#  Freq_10                :integer          default(0), not null
#  Freq_2                 :integer          default(0), not null
#  Freq_3                 :integer          default(0), not null
#  Freq_4                 :integer          default(0), not null
#  Freq_5                 :integer          default(0), not null
#  Freq_6                 :integer          default(0), not null
#  Freq_7                 :integer          default(0), not null
#  Freq_8                 :integer          default(0), not null
#  Freq_9                 :integer          default(0), not null
#  ID                     :integer          default(0), not null, primary key
#  MinDistance            :float(24)        default(0.0), not null
#  Name                   :string(100)
#  SoundEntriesAdvancedID :integer          default(0), not null
#  SoundType              :integer          default(0), not null
#  Volumefloat            :float(24)        default(0.0), not null
#
module World
  class SoundentriesDbc < WorldApplicationRecord
    self.table_name = 'soundentries_dbc'
    self.primary_key = 'ID'
  end
end
