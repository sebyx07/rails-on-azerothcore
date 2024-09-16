# frozen_string_literal: true

# == Schema Information
#
# Table name: gameobject_template
#
#  AIName         :string(64)       default(""), not null
#  Data0          :integer          default(0), unsigned, not null
#  Data1          :integer          default(0), not null
#  Data10         :integer          default(0), unsigned, not null
#  Data11         :integer          default(0), unsigned, not null
#  Data12         :integer          default(0), unsigned, not null
#  Data13         :integer          default(0), unsigned, not null
#  Data14         :integer          default(0), unsigned, not null
#  Data15         :integer          default(0), unsigned, not null
#  Data16         :integer          default(0), unsigned, not null
#  Data17         :integer          default(0), unsigned, not null
#  Data18         :integer          default(0), unsigned, not null
#  Data19         :integer          default(0), unsigned, not null
#  Data2          :integer          default(0), unsigned, not null
#  Data20         :integer          default(0), unsigned, not null
#  Data21         :integer          default(0), unsigned, not null
#  Data22         :integer          default(0), unsigned, not null
#  Data23         :integer          default(0), unsigned, not null
#  Data3          :integer          default(0), unsigned, not null
#  Data4          :integer          default(0), unsigned, not null
#  Data5          :integer          default(0), unsigned, not null
#  Data6          :integer          default(0), not null
#  Data7          :integer          default(0), unsigned, not null
#  Data8          :integer          default(0), unsigned, not null
#  Data9          :integer          default(0), unsigned, not null
#  IconName       :string(100)      default(""), not null
#  ScriptName     :string(64)       default(""), not null
#  VerifiedBuild  :integer
#  castBarCaption :string(100)      default(""), not null
#  displayId      :integer          default(0), unsigned, not null
#  entry          :integer          default(0), unsigned, not null, primary key
#  name           :string(100)      default(""), not null
#  size           :float(24)        default(1.0), not null
#  type           :integer          default(0), unsigned, not null
#  unk1           :string(100)      default(""), not null
#
# Indexes
#
#  idx_name  (name)
#
module World
  class GameobjectTemplate < WorldApplicationRecord
    self.table_name = 'gameobject_template'
    self.primary_key = 'entry'
  end
end
