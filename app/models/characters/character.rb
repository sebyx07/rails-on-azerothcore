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
    include FixDangerousColumnsConcern

    self.table_name = 'characters'
    self.primary_key = 'guid'

    alias_attribute :c_class, :class

    has_many :inventory_items, class_name: 'Characters::CharacterInventory', foreign_key: :guid, primary_key: :guid
    has_many :instance_items, class_name: 'Characters::ItemInstance', foreign_key: :owner_guid, primary_key: :guid

    belongs_to :c_account, class_name: 'Auth::Account', foreign_key: :account

    def items
      instance_items.map(&:item)
    end

    # generated stuff

    alias_attribute :action_bars, :actionBars
    alias_attribute :active_talent_group, :activeTalentGroup
    alias_attribute :ammo_id, :ammoId
    alias_attribute :arena_points, :arenaPoints
    alias_attribute :bank_slots, :bankSlots
    alias_attribute :chosen_title, :chosenTitle
    alias_attribute :death_expire_time, :death_expire_time
    alias_attribute :delete_date, :deleteDate
    alias_attribute :delete_infos_account, :deleteInfos_Account
    alias_attribute :delete_infos_name, :deleteInfos_Name
    alias_attribute :equipment_cache, :equipmentCache
    alias_attribute :explored_zones, :exploredZones
    alias_attribute :extra_bonus_talent_count, :extraBonusTalentCount
    alias_attribute :facial_style, :facialStyle
    alias_attribute :grantable_levels, :grantableLevels
    alias_attribute :hair_color, :hairColor
    alias_attribute :hair_style, :hairStyle
    alias_attribute :inn_trigger_id, :innTriggerId
    alias_attribute :instance_mode_mask, :instance_mode_mask
    alias_attribute :is_logout_resting, :is_logout_resting
    alias_attribute :known_currencies, :knownCurrencies
    alias_attribute :known_titles, :knownTitles
    alias_attribute :logout_time, :logout_time
    alias_attribute :player_flags, :playerFlags
    alias_attribute :resettalents_cost, :resettalents_cost
    alias_attribute :resettalents_time, :resettalents_time
    alias_attribute :rest_state, :restState
    alias_attribute :stable_slots, :stable_slots
    alias_attribute :talent_groups_count, :talentGroupsCount
    alias_attribute :taxi_path, :taxi_path
    alias_attribute :today_honor_points, :todayHonorPoints
    alias_attribute :today_kills, :todayKills
    alias_attribute :total_honor_points, :totalHonorPoints
    alias_attribute :total_kills, :totalKills
    alias_attribute :total_time, :totaltime
    alias_attribute :trans_guid, :transguid
    alias_attribute :watched_faction, :watchedFaction
    alias_attribute :yesterday_honor_points, :yesterdayHonorPoints
    alias_attribute :yesterday_kills, :yesterdayKills

    alias_attribute :global_unique_identifier, :guid
    alias_attribute :map_identifier, :map

    validates :account, :name, :race, :c_class, :gender, :level, :map, :position_x, :position_y, :position_z,
              :orientation, :taximask, :creation_date, presence: true

    # Numericality validations
    validates :account, :actionBars, :activeTalentGroup, :ammoId, :arenaPoints, :at_login, :bankSlots,
              :chosenTitle, :cinematic, :c_class, :death_expire_time, :drunk, :extraBonusTalentCount,
              :extra_flags, :face, :facialStyle, :gender, :grantableLevels, :guid, :hairColor, :hairStyle,
              :health, :innTriggerId, :instance_mode_mask, :is_logout_resting, :knownCurrencies, :latency,
              :level, :leveltime, :logout_time, :map, :money, :online, :playerFlags, :power1, :power2,
              :power3, :power4, :power5, :power6, :power7, :race, :resettalents_cost, :resettalents_time,
              :restState, :skin, :stable_slots, :talentGroupsCount, :todayHonorPoints, :todayKills,
              :totalHonorPoints, :totalKills, :totaltime, :transguid, :watchedFaction, :xp,
              :yesterdayHonorPoints, :yesterdayKills, :zone, :instance_id,
              numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    # Float numericality validations
    validates :position_x, :position_y, :position_z, :orientation, :rest_bonus, :trans_o, :trans_x,
              :trans_y, :trans_z, numericality: true

    # Length validations
    validates :name, length: { maximum: 12 }
    validates :deleteInfos_Name, length: { maximum: 12 }, allow_nil: true

    # Format validations
    validates :name, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'only allows letters and numbers' }

    # Inclusion validations
    validates :gender, inclusion: { in: 0..1, message: '%{value} is not a valid gender' }
    validates :c_class, inclusion: { in: 1..11, message: '%{value} is not a valid class' }
    validates :race, inclusion: { in: 1..11, message: '%{value} is not a valid race' }

    # Custom validations
    validate :valid_delete_info

    private
      def valid_delete_info
        if delete_date.present? ^ delete_infos_account.present? ^ delete_infos_name.present?
          errors.add(:base, 'All delete info fields must be present if any are present')
        end
      end
  end
end
