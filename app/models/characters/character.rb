# frozen_string_literal: true

# == Schema Information
#
# Table name: characters
#
#  account(Account Identifier)    :integer          default(0), unsigned, not null
#  actionBars                     :integer          default(0), unsigned, not null
#  activeTalentGroup              :integer          default(0), unsigned, not null
#  ammoId                         :integer          default(0), unsigned, not null
#  arenaPoints                    :integer          default(0), unsigned, not null
#  at_login                       :integer          default(0), unsigned, not null
#  bankSlots                      :integer          default(0), unsigned, not null
#  chosenTitle                    :integer          default(0), unsigned, not null
#  cinematic                      :integer          default(0), unsigned, not null
#  class                          :integer          default(0), unsigned, not null
#  creation_date                  :datetime         not null
#  death_expire_time              :integer          default(0), unsigned, not null
#  deleteDate                     :integer          unsigned
#  deleteInfos_Account            :integer          unsigned
#  deleteInfos_Name               :string(12)
#  drunk                          :integer          default(0), unsigned, not null
#  equipmentCache                 :text(4294967295)
#  exploredZones                  :text(4294967295)
#  extraBonusTalentCount          :integer          default(0), not null
#  extra_flags                    :integer          default(0), unsigned, not null
#  face                           :integer          default(0), unsigned, not null
#  facialStyle                    :integer          default(0), unsigned, not null
#  gender                         :integer          default(0), unsigned, not null
#  grantableLevels                :integer          default(0), unsigned, not null
#  guid(Global Unique Identifier) :integer          default(0), unsigned, not null, primary key
#  hairColor                      :integer          default(0), unsigned, not null
#  hairStyle                      :integer          default(0), unsigned, not null
#  health                         :integer          default(0), unsigned, not null
#  innTriggerId                   :integer          unsigned, not null
#  instance_mode_mask             :integer          default(0), unsigned, not null
#  is_logout_resting              :integer          default(0), unsigned, not null
#  knownCurrencies                :bigint           default(0), unsigned, not null
#  knownTitles                    :text(4294967295)
#  latency                        :integer          default(0), unsigned
#  level                          :integer          default(0), unsigned, not null
#  leveltime                      :integer          default(0), unsigned, not null
#  logout_time                    :integer          default(0), unsigned, not null
#  map(Map Identifier)            :integer          default(0), unsigned, not null
#  money                          :integer          default(0), unsigned, not null
#  name                           :string(12)       not null
#  online                         :integer          default(0), unsigned, not null
#  order                          :integer
#  orientation                    :float(24)        default(0.0), not null
#  playerFlags                    :integer          default(0), unsigned, not null
#  position_x                     :float(24)        default(0.0), not null
#  position_y                     :float(24)        default(0.0), not null
#  position_z                     :float(24)        default(0.0), not null
#  power1                         :integer          default(0), unsigned, not null
#  power2                         :integer          default(0), unsigned, not null
#  power3                         :integer          default(0), unsigned, not null
#  power4                         :integer          default(0), unsigned, not null
#  power5                         :integer          default(0), unsigned, not null
#  power6                         :integer          default(0), unsigned, not null
#  power7                         :integer          default(0), unsigned, not null
#  race                           :integer          default(0), unsigned, not null
#  resettalents_cost              :integer          default(0), unsigned, not null
#  resettalents_time              :integer          default(0), unsigned, not null
#  restState                      :integer          default(0), unsigned, not null
#  rest_bonus                     :float(24)        default(0.0), not null
#  skin                           :integer          default(0), unsigned, not null
#  stable_slots                   :integer          default(0), unsigned, not null
#  talentGroupsCount              :integer          default(1), unsigned, not null
#  taxi_path                      :text(65535)
#  taximask                       :text(65535)      not null
#  todayHonorPoints               :integer          default(0), unsigned, not null
#  todayKills                     :integer          default(0), unsigned, not null
#  totalHonorPoints               :integer          default(0), unsigned, not null
#  totalKills                     :integer          default(0), unsigned, not null
#  totaltime                      :integer          default(0), unsigned, not null
#  trans_o                        :float(24)        default(0.0), not null
#  trans_x                        :float(24)        default(0.0), not null
#  trans_y                        :float(24)        default(0.0), not null
#  trans_z                        :float(24)        default(0.0), not null
#  transguid                      :integer          default(0)
#  watchedFaction                 :integer          default(0), unsigned, not null
#  xp                             :integer          default(0), unsigned, not null
#  yesterdayHonorPoints           :integer          default(0), unsigned, not null
#  yesterdayKills                 :integer          default(0), unsigned, not null
#  zone                           :integer          default(0), unsigned, not null
#  instance_id                    :integer          default(0), unsigned, not null
#
# Indexes
#
#  idx_account  (account)
#  idx_name     (name)
#  idx_online   (online)
#
module Characters
  class Character < CharactersApplicationRecord
    self.table_name = 'characters'
    self.primary_key = 'guid'

    self.ignored_columns = %w[class]

    has_many :inventory_items, class_name: 'Characters::CharacterInventory', foreign_key: :guid, primary_key: :guid
    has_many :instance_items, class_name: 'Characters::ItemInstance', foreign_key: :owner_guid, primary_key: :guid

    belongs_to :c_account, class_name: 'Auth::Account', foreign_key: :account

    def items
      instance_items.map(&:item)
    end
  end
end
