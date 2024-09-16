# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 0) do
  create_table "achievement_category_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Parent", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "Ui_Order", default: 0, null: false
  end

  create_table "achievement_criteria_data", primary_key: ["criteria_id", "type"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Achievment system", force: :cascade do |t|
    t.integer "criteria_id", null: false
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "value1", default: 0, null: false, unsigned: true
    t.integer "value2", default: 0, null: false, unsigned: true
    t.string "ScriptName", limit: 64, default: "", null: false
  end

  create_table "achievement_criteria_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Achievement_Id", default: 0, null: false
    t.integer "Type", default: 0, null: false
    t.integer "Asset_Id", default: 0, null: false
    t.integer "Quantity", default: 0, null: false
    t.integer "Start_Event", default: 0, null: false
    t.integer "Start_Asset", default: 0, null: false
    t.integer "Fail_Event", default: 0, null: false
    t.integer "Fail_Asset", default: 0, null: false
    t.string "Description_Lang_enUS", limit: 100
    t.string "Description_Lang_enGB", limit: 100
    t.string "Description_Lang_koKR", limit: 100
    t.string "Description_Lang_frFR", limit: 100
    t.string "Description_Lang_deDE", limit: 100
    t.string "Description_Lang_enCN", limit: 100
    t.string "Description_Lang_zhCN", limit: 100
    t.string "Description_Lang_enTW", limit: 100
    t.string "Description_Lang_zhTW", limit: 100
    t.string "Description_Lang_esES", limit: 100
    t.string "Description_Lang_esMX", limit: 100
    t.string "Description_Lang_ruRU", limit: 100
    t.string "Description_Lang_ptPT", limit: 100
    t.string "Description_Lang_ptBR", limit: 100
    t.string "Description_Lang_itIT", limit: 100
    t.string "Description_Lang_Unk", limit: 100
    t.integer "Description_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "Flags", default: 0, null: false
    t.integer "Timer_Start_Event", default: 0, null: false
    t.integer "Timer_Asset_Id", default: 0, null: false
    t.integer "Timer_Time", default: 0, null: false
    t.integer "Ui_Order", default: 0, null: false
  end

  create_table "achievement_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Faction", default: 0, null: false
    t.integer "Instance_Id", default: 0, null: false
    t.integer "Supercedes", default: 0, null: false
    t.string "Title_Lang_enUS", limit: 100
    t.string "Title_Lang_enGB", limit: 100
    t.string "Title_Lang_koKR", limit: 100
    t.string "Title_Lang_frFR", limit: 100
    t.string "Title_Lang_deDE", limit: 100
    t.string "Title_Lang_enCN", limit: 100
    t.string "Title_Lang_zhCN", limit: 100
    t.string "Title_Lang_enTW", limit: 100
    t.string "Title_Lang_zhTW", limit: 100
    t.string "Title_Lang_esES", limit: 100
    t.string "Title_Lang_esMX", limit: 100
    t.string "Title_Lang_ruRU", limit: 100
    t.string "Title_Lang_ptPT", limit: 100
    t.string "Title_Lang_ptBR", limit: 100
    t.string "Title_Lang_itIT", limit: 100
    t.string "Title_Lang_Unk", limit: 100
    t.integer "Title_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Description_Lang_enUS", limit: 200
    t.string "Description_Lang_enGB", limit: 200
    t.string "Description_Lang_koKR", limit: 200
    t.string "Description_Lang_frFR", limit: 200
    t.string "Description_Lang_deDE", limit: 200
    t.string "Description_Lang_enCN", limit: 200
    t.string "Description_Lang_zhCN", limit: 200
    t.string "Description_Lang_enTW", limit: 200
    t.string "Description_Lang_zhTW", limit: 200
    t.string "Description_Lang_esES", limit: 200
    t.string "Description_Lang_esMX", limit: 200
    t.string "Description_Lang_ruRU", limit: 200
    t.string "Description_Lang_ptPT", limit: 200
    t.string "Description_Lang_ptBR", limit: 200
    t.string "Description_Lang_itIT", limit: 200
    t.string "Description_Lang_Unk", limit: 100
    t.integer "Description_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "Category", default: 0, null: false
    t.integer "Points", default: 0, null: false
    t.integer "Ui_Order", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "IconID", default: 0, null: false
    t.string "Reward_Lang_enUS", limit: 100
    t.string "Reward_Lang_enGB", limit: 100
    t.string "Reward_Lang_koKR", limit: 100
    t.string "Reward_Lang_frFR", limit: 100
    t.string "Reward_Lang_deDE", limit: 100
    t.string "Reward_Lang_enCN", limit: 100
    t.string "Reward_Lang_zhCN", limit: 100
    t.string "Reward_Lang_enTW", limit: 100
    t.string "Reward_Lang_zhTW", limit: 100
    t.string "Reward_Lang_esES", limit: 100
    t.string "Reward_Lang_esMX", limit: 100
    t.string "Reward_Lang_ruRU", limit: 100
    t.string "Reward_Lang_ptPT", limit: 100
    t.string "Reward_Lang_ptBR", limit: 100
    t.string "Reward_Lang_itIT", limit: 100
    t.string "Reward_Lang_Unk", limit: 100
    t.integer "Reward_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "Minimum_Criteria", default: 0, null: false
    t.integer "Shares_Criteria", default: 0, null: false
  end

  create_table "achievement_reward", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "TitleA", default: 0, null: false, unsigned: true
    t.integer "TitleH", default: 0, null: false, unsigned: true
    t.integer "ItemID", default: 0, null: false, unsigned: true
    t.integer "Sender", default: 0, null: false, unsigned: true
    t.string "Subject"
    t.text "Body"
    t.integer "MailTemplateID", default: 0, null: false, unsigned: true
  end

  create_table "achievement_reward_locale", primary_key: ["ID", "Locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "Locale", limit: 4, null: false
    t.text "Subject"
    t.text "Text"
  end

  create_table "acore_string", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "content_default", null: false
    t.text "locale_koKR"
    t.text "locale_frFR"
    t.text "locale_deDE"
    t.text "locale_zhCN"
    t.text "locale_zhTW"
    t.text "locale_esES"
    t.text "locale_esMX"
    t.text "locale_ruRU"
  end

  create_table "areagroup_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "AreaID_1", default: 0, null: false
    t.integer "AreaID_2", default: 0, null: false
    t.integer "AreaID_3", default: 0, null: false
    t.integer "AreaID_4", default: 0, null: false
    t.integer "AreaID_5", default: 0, null: false
    t.integer "AreaID_6", default: 0, null: false
    t.integer "NextAreaID", default: 0, null: false
  end

  create_table "areapoi_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Importance", default: 0, null: false
    t.integer "Icon_1", default: 0, null: false
    t.integer "Icon_2", default: 0, null: false
    t.integer "Icon_3", default: 0, null: false
    t.integer "Icon_4", default: 0, null: false
    t.integer "Icon_5", default: 0, null: false
    t.integer "Icon_6", default: 0, null: false
    t.integer "Icon_7", default: 0, null: false
    t.integer "Icon_8", default: 0, null: false
    t.integer "Icon_9", default: 0, null: false
    t.integer "FactionID", default: 0, null: false
    t.float "X", default: 0.0, null: false
    t.float "Y", default: 0.0, null: false
    t.float "Z", default: 0.0, null: false
    t.integer "ContinentID", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "AreaID", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Description_Lang_enUS", limit: 100
    t.string "Description_Lang_enGB", limit: 100
    t.string "Description_Lang_koKR", limit: 100
    t.string "Description_Lang_frFR", limit: 100
    t.string "Description_Lang_deDE", limit: 100
    t.string "Description_Lang_enCN", limit: 100
    t.string "Description_Lang_zhCN", limit: 100
    t.string "Description_Lang_enTW", limit: 100
    t.string "Description_Lang_zhTW", limit: 100
    t.string "Description_Lang_esES", limit: 100
    t.string "Description_Lang_esMX", limit: 100
    t.string "Description_Lang_ruRU", limit: 100
    t.string "Description_Lang_ptPT", limit: 100
    t.string "Description_Lang_ptBR", limit: 100
    t.string "Description_Lang_itIT", limit: 100
    t.string "Description_Lang_Unk", limit: 100
    t.integer "Description_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "WorldStateID", default: 0, null: false
    t.integer "WorldMapLink", default: 0, null: false
  end

  create_table "areatable_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ContinentID", default: 0, null: false
    t.integer "ParentAreaID", default: 0, null: false
    t.integer "AreaBit", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "SoundProviderPref", default: 0, null: false
    t.integer "SoundProviderPrefUnderwater", default: 0, null: false
    t.integer "AmbienceID", default: 0, null: false
    t.integer "ZoneMusic", default: 0, null: false
    t.integer "IntroSound", default: 0, null: false
    t.integer "ExplorationLevel", default: 0, null: false
    t.string "AreaName_Lang_enUS", limit: 100
    t.string "AreaName_Lang_enGB", limit: 100
    t.string "AreaName_Lang_koKR", limit: 100
    t.string "AreaName_Lang_frFR", limit: 100
    t.string "AreaName_Lang_deDE", limit: 100
    t.string "AreaName_Lang_enCN", limit: 100
    t.string "AreaName_Lang_zhCN", limit: 100
    t.string "AreaName_Lang_enTW", limit: 100
    t.string "AreaName_Lang_zhTW", limit: 100
    t.string "AreaName_Lang_esES", limit: 100
    t.string "AreaName_Lang_esMX", limit: 100
    t.string "AreaName_Lang_ruRU", limit: 100
    t.string "AreaName_Lang_ptPT", limit: 100
    t.string "AreaName_Lang_ptBR", limit: 100
    t.string "AreaName_Lang_itIT", limit: 100
    t.string "AreaName_Lang_Unk", limit: 100
    t.integer "AreaName_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "FactionGroupMask", default: 0, null: false
    t.integer "LiquidTypeID_1", default: 0, null: false
    t.integer "LiquidTypeID_2", default: 0, null: false
    t.integer "LiquidTypeID_3", default: 0, null: false
    t.integer "LiquidTypeID_4", default: 0, null: false
    t.float "MinElevation", default: 0.0, null: false
    t.float "Ambient_Multiplier", default: 0.0, null: false
    t.integer "Lightid", default: 0, null: false
  end

  create_table "areatrigger", primary_key: "entry", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "map", default: 0, null: false, unsigned: true
    t.float "x", default: 0.0, null: false
    t.float "y", default: 0.0, null: false
    t.float "z", default: 0.0, null: false
    t.float "radius", default: 0.0, null: false, comment: "Seems to be a box of size yards with center at x,y,z"
    t.float "length", default: 0.0, null: false, comment: "Most commonly used when size is 0, but not always"
    t.float "width", default: 0.0, null: false, comment: "Most commonly used when size is 0, but not always"
    t.float "height", default: 0.0, null: false, comment: "Most commonly used when size is 0, but not always"
    t.float "orientation", default: 0.0, null: false, comment: "Most commonly used when size is 0, but not always"
  end

  create_table "areatrigger_involvedrelation", id: { type: :integer, default: 0, comment: "Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Trigger System", force: :cascade do |t|
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
  end

  create_table "areatrigger_scripts", primary_key: "entry", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "ScriptName", limit: 64, null: false
  end

  create_table "areatrigger_tavern", id: { type: :integer, default: 0, comment: "Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Trigger System", force: :cascade do |t|
    t.text "name"
    t.integer "faction", default: 0, null: false, unsigned: true
  end

  create_table "areatrigger_teleport", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Trigger System", force: :cascade do |t|
    t.text "Name"
    t.integer "target_map", limit: 2, default: 0, null: false, unsigned: true
    t.float "target_position_x", default: 0.0, null: false
    t.float "target_position_y", default: 0.0, null: false
    t.float "target_position_z", default: 0.0, null: false
    t.float "target_orientation", default: 0.0, null: false
    t.index ["Name"], name: "name", type: :fulltext
  end

  create_table "auctionhouse_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "FactionID", default: 0, null: false
    t.integer "DepositRate", default: 0, null: false
    t.integer "ConsignmentRate", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "bankbagslotprices_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Cost", default: 0, null: false
  end

  create_table "barbershopstyle_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Type", default: 0, null: false
    t.string "DisplayName_Lang_enUS", limit: 100
    t.string "DisplayName_Lang_enGB", limit: 100
    t.string "DisplayName_Lang_koKR", limit: 100
    t.string "DisplayName_Lang_frFR", limit: 100
    t.string "DisplayName_Lang_deDE", limit: 100
    t.string "DisplayName_Lang_enCN", limit: 100
    t.string "DisplayName_Lang_zhCN", limit: 100
    t.string "DisplayName_Lang_enTW", limit: 100
    t.string "DisplayName_Lang_zhTW", limit: 100
    t.string "DisplayName_Lang_esES", limit: 100
    t.string "DisplayName_Lang_esMX", limit: 100
    t.string "DisplayName_Lang_ruRU", limit: 100
    t.string "DisplayName_Lang_ptPT", limit: 100
    t.string "DisplayName_Lang_ptBR", limit: 100
    t.string "DisplayName_Lang_itIT", limit: 100
    t.string "DisplayName_Lang_Unk", limit: 100
    t.integer "DisplayName_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Description_Lang_enUS", limit: 100
    t.string "Description_Lang_enGB", limit: 100
    t.string "Description_Lang_koKR", limit: 100
    t.string "Description_Lang_frFR", limit: 100
    t.string "Description_Lang_deDE", limit: 100
    t.string "Description_Lang_enCN", limit: 100
    t.string "Description_Lang_zhCN", limit: 100
    t.string "Description_Lang_enTW", limit: 100
    t.string "Description_Lang_zhTW", limit: 100
    t.string "Description_Lang_esES", limit: 100
    t.string "Description_Lang_esMX", limit: 100
    t.string "Description_Lang_ruRU", limit: 100
    t.string "Description_Lang_ptPT", limit: 100
    t.string "Description_Lang_ptBR", limit: 100
    t.string "Description_Lang_itIT", limit: 100
    t.string "Description_Lang_Unk", limit: 100
    t.integer "Description_Lang_Mask", default: 0, null: false, unsigned: true
    t.float "Cost_Modifier", default: 0.0, null: false
    t.integer "Race", default: 0, null: false
    t.integer "Sex", default: 0, null: false
    t.integer "Data", default: 0, null: false
  end

  create_table "battleground_template", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MinPlayersPerTeam", limit: 2, default: 0, null: false, unsigned: true
    t.integer "MaxPlayersPerTeam", limit: 2, default: 0, null: false, unsigned: true
    t.integer "MinLvl", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MaxLvl", limit: 1, default: 0, null: false, unsigned: true
    t.integer "AllianceStartLoc", unsigned: true
    t.float "AllianceStartO", null: false
    t.integer "HordeStartLoc", unsigned: true
    t.float "HordeStartO", null: false
    t.float "StartMaxDist", default: 0.0, null: false
    t.integer "Weight", limit: 1, default: 1, null: false, unsigned: true
    t.string "ScriptName", limit: 64, default: "", null: false
    t.string "Comment", limit: 38, null: false
  end

  create_table "battlemaster_entry", primary_key: "entry", id: { type: :integer, default: 0, comment: "Entry of a creature", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "bg_template", default: 0, null: false, comment: "Battleground template id", unsigned: true
  end

  create_table "battlemasterlist_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MapID_1", default: 0, null: false
    t.integer "MapID_2", default: 0, null: false
    t.integer "MapID_3", default: 0, null: false
    t.integer "MapID_4", default: 0, null: false
    t.integer "MapID_5", default: 0, null: false
    t.integer "MapID_6", default: 0, null: false
    t.integer "MapID_7", default: 0, null: false
    t.integer "MapID_8", default: 0, null: false
    t.integer "InstanceType", default: 0, null: false
    t.integer "GroupsAllowed", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "MaxGroupSize", default: 0, null: false
    t.integer "HolidayWorldState", default: 0, null: false
    t.integer "Minlevel", default: 0, null: false
    t.integer "Maxlevel", default: 0, null: false
  end

  create_table "broadcast_text", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "LanguageID"
    t.text "MaleText", size: :long
    t.text "FemaleText", size: :long
    t.integer "EmoteID1"
    t.integer "EmoteID2"
    t.integer "EmoteID3"
    t.integer "EmoteDelay1"
    t.integer "EmoteDelay2"
    t.integer "EmoteDelay3"
    t.integer "SoundEntriesId"
    t.integer "EmotesID"
    t.integer "Flags"
    t.integer "VerifiedBuild", limit: 2, default: 0
  end

  create_table "broadcast_text_locale", primary_key: ["ID", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "MaleText"
    t.text "FemaleText"
    t.integer "VerifiedBuild", limit: 2, default: 0
  end

  create_table "charstartoutfit_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "RaceID", limit: 1, default: 0, null: false, unsigned: true
    t.integer "ClassID", limit: 1, default: 0, null: false, unsigned: true
    t.integer "SexID", limit: 1, default: 0, null: false, unsigned: true
    t.integer "OutfitID", limit: 1, default: 0, null: false, unsigned: true
    t.integer "ItemID_1", default: 0, null: false
    t.integer "ItemID_2", default: 0, null: false
    t.integer "ItemID_3", default: 0, null: false
    t.integer "ItemID_4", default: 0, null: false
    t.integer "ItemID_5", default: 0, null: false
    t.integer "ItemID_6", default: 0, null: false
    t.integer "ItemID_7", default: 0, null: false
    t.integer "ItemID_8", default: 0, null: false
    t.integer "ItemID_9", default: 0, null: false
    t.integer "ItemID_10", default: 0, null: false
    t.integer "ItemID_11", default: 0, null: false
    t.integer "ItemID_12", default: 0, null: false
    t.integer "ItemID_13", default: 0, null: false
    t.integer "ItemID_14", default: 0, null: false
    t.integer "ItemID_15", default: 0, null: false
    t.integer "ItemID_16", default: 0, null: false
    t.integer "ItemID_17", default: 0, null: false
    t.integer "ItemID_18", default: 0, null: false
    t.integer "ItemID_19", default: 0, null: false
    t.integer "ItemID_20", default: 0, null: false
    t.integer "ItemID_21", default: 0, null: false
    t.integer "ItemID_22", default: 0, null: false
    t.integer "ItemID_23", default: 0, null: false
    t.integer "ItemID_24", default: 0, null: false
    t.integer "DisplayItemID_1", default: 0, null: false
    t.integer "DisplayItemID_2", default: 0, null: false
    t.integer "DisplayItemID_3", default: 0, null: false
    t.integer "DisplayItemID_4", default: 0, null: false
    t.integer "DisplayItemID_5", default: 0, null: false
    t.integer "DisplayItemID_6", default: 0, null: false
    t.integer "DisplayItemID_7", default: 0, null: false
    t.integer "DisplayItemID_8", default: 0, null: false
    t.integer "DisplayItemID_9", default: 0, null: false
    t.integer "DisplayItemID_10", default: 0, null: false
    t.integer "DisplayItemID_11", default: 0, null: false
    t.integer "DisplayItemID_12", default: 0, null: false
    t.integer "DisplayItemID_13", default: 0, null: false
    t.integer "DisplayItemID_14", default: 0, null: false
    t.integer "DisplayItemID_15", default: 0, null: false
    t.integer "DisplayItemID_16", default: 0, null: false
    t.integer "DisplayItemID_17", default: 0, null: false
    t.integer "DisplayItemID_18", default: 0, null: false
    t.integer "DisplayItemID_19", default: 0, null: false
    t.integer "DisplayItemID_20", default: 0, null: false
    t.integer "DisplayItemID_21", default: 0, null: false
    t.integer "DisplayItemID_22", default: 0, null: false
    t.integer "DisplayItemID_23", default: 0, null: false
    t.integer "DisplayItemID_24", default: 0, null: false
    t.integer "InventoryType_1", default: 0, null: false
    t.integer "InventoryType_2", default: 0, null: false
    t.integer "InventoryType_3", default: 0, null: false
    t.integer "InventoryType_4", default: 0, null: false
    t.integer "InventoryType_5", default: 0, null: false
    t.integer "InventoryType_6", default: 0, null: false
    t.integer "InventoryType_7", default: 0, null: false
    t.integer "InventoryType_8", default: 0, null: false
    t.integer "InventoryType_9", default: 0, null: false
    t.integer "InventoryType_10", default: 0, null: false
    t.integer "InventoryType_11", default: 0, null: false
    t.integer "InventoryType_12", default: 0, null: false
    t.integer "InventoryType_13", default: 0, null: false
    t.integer "InventoryType_14", default: 0, null: false
    t.integer "InventoryType_15", default: 0, null: false
    t.integer "InventoryType_16", default: 0, null: false
    t.integer "InventoryType_17", default: 0, null: false
    t.integer "InventoryType_18", default: 0, null: false
    t.integer "InventoryType_19", default: 0, null: false
    t.integer "InventoryType_20", default: 0, null: false
    t.integer "InventoryType_21", default: 0, null: false
    t.integer "InventoryType_22", default: 0, null: false
    t.integer "InventoryType_23", default: 0, null: false
    t.integer "InventoryType_24", default: 0, null: false
  end

  create_table "chartitles_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Condition_ID", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Name1_Lang_enUS", limit: 100
    t.string "Name1_Lang_enGB", limit: 100
    t.string "Name1_Lang_koKR", limit: 100
    t.string "Name1_Lang_frFR", limit: 100
    t.string "Name1_Lang_deDE", limit: 100
    t.string "Name1_Lang_enCN", limit: 100
    t.string "Name1_Lang_zhCN", limit: 100
    t.string "Name1_Lang_enTW", limit: 100
    t.string "Name1_Lang_zhTW", limit: 100
    t.string "Name1_Lang_esES", limit: 100
    t.string "Name1_Lang_esMX", limit: 100
    t.string "Name1_Lang_ruRU", limit: 100
    t.string "Name1_Lang_ptPT", limit: 100
    t.string "Name1_Lang_ptBR", limit: 100
    t.string "Name1_Lang_itIT", limit: 100
    t.string "Name1_Lang_Unk", limit: 100
    t.integer "Name1_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "Mask_ID", default: 0, null: false
  end

  create_table "chatchannels_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Flags", default: 0, null: false
    t.integer "FactionGroup", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Shortcut_Lang_enUS", limit: 100
    t.string "Shortcut_Lang_enGB", limit: 100
    t.string "Shortcut_Lang_koKR", limit: 100
    t.string "Shortcut_Lang_frFR", limit: 100
    t.string "Shortcut_Lang_deDE", limit: 100
    t.string "Shortcut_Lang_enCN", limit: 100
    t.string "Shortcut_Lang_zhCN", limit: 100
    t.string "Shortcut_Lang_enTW", limit: 100
    t.string "Shortcut_Lang_zhTW", limit: 100
    t.string "Shortcut_Lang_esES", limit: 100
    t.string "Shortcut_Lang_esMX", limit: 100
    t.string "Shortcut_Lang_ruRU", limit: 100
    t.string "Shortcut_Lang_ptPT", limit: 100
    t.string "Shortcut_Lang_ptBR", limit: 100
    t.string "Shortcut_Lang_itIT", limit: 100
    t.string "Shortcut_Lang_Unk", limit: 100
    t.integer "Shortcut_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "chrclasses_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Field01", default: 0, null: false
    t.integer "DisplayPower", default: 0, null: false
    t.integer "PetNameToken", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Name_Female_Lang_enUS", limit: 100
    t.string "Name_Female_Lang_enGB", limit: 100
    t.string "Name_Female_Lang_koKR", limit: 100
    t.string "Name_Female_Lang_frFR", limit: 100
    t.string "Name_Female_Lang_deDE", limit: 100
    t.string "Name_Female_Lang_enCN", limit: 100
    t.string "Name_Female_Lang_zhCN", limit: 100
    t.string "Name_Female_Lang_enTW", limit: 100
    t.string "Name_Female_Lang_zhTW", limit: 100
    t.string "Name_Female_Lang_esES", limit: 100
    t.string "Name_Female_Lang_esMX", limit: 100
    t.string "Name_Female_Lang_ruRU", limit: 100
    t.string "Name_Female_Lang_ptPT", limit: 100
    t.string "Name_Female_Lang_ptBR", limit: 100
    t.string "Name_Female_Lang_itIT", limit: 100
    t.string "Name_Female_Lang_Unk", limit: 100
    t.integer "Name_Female_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Name_Male_Lang_enUS", limit: 100
    t.string "Name_Male_Lang_enGB", limit: 100
    t.string "Name_Male_Lang_koKR", limit: 100
    t.string "Name_Male_Lang_frFR", limit: 100
    t.string "Name_Male_Lang_deDE", limit: 100
    t.string "Name_Male_Lang_enCN", limit: 100
    t.string "Name_Male_Lang_zhCN", limit: 100
    t.string "Name_Male_Lang_enTW", limit: 100
    t.string "Name_Male_Lang_zhTW", limit: 100
    t.string "Name_Male_Lang_esES", limit: 100
    t.string "Name_Male_Lang_esMX", limit: 100
    t.string "Name_Male_Lang_ruRU", limit: 100
    t.string "Name_Male_Lang_ptPT", limit: 100
    t.string "Name_Male_Lang_ptBR", limit: 100
    t.string "Name_Male_Lang_itIT", limit: 100
    t.string "Name_Male_Lang_Unk", limit: 100
    t.integer "Name_Male_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Filename", limit: 100
    t.integer "SpellClassSet", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "CinematicSequenceID", default: 0, null: false
    t.integer "Required_Expansion", default: 0, null: false
  end

  create_table "chrraces_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Flags", default: 0, null: false
    t.integer "FactionID", default: 0, null: false
    t.integer "ExplorationSoundID", default: 0, null: false
    t.integer "MaleDisplayId", default: 0, null: false
    t.integer "FemaleDisplayId", default: 0, null: false
    t.string "ClientPrefix", limit: 100
    t.integer "BaseLanguage", default: 0, null: false
    t.integer "CreatureType", default: 0, null: false
    t.integer "ResSicknessSpellID", default: 0, null: false
    t.integer "SplashSoundID", default: 0, null: false
    t.string "ClientFilestring", limit: 100
    t.integer "CinematicSequenceID", default: 0, null: false
    t.integer "Alliance", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Name_Female_Lang_enUS", limit: 100
    t.string "Name_Female_Lang_enGB", limit: 100
    t.string "Name_Female_Lang_koKR", limit: 100
    t.string "Name_Female_Lang_frFR", limit: 100
    t.string "Name_Female_Lang_deDE", limit: 100
    t.string "Name_Female_Lang_enCN", limit: 100
    t.string "Name_Female_Lang_zhCN", limit: 100
    t.string "Name_Female_Lang_enTW", limit: 100
    t.string "Name_Female_Lang_zhTW", limit: 100
    t.string "Name_Female_Lang_esES", limit: 100
    t.string "Name_Female_Lang_esMX", limit: 100
    t.string "Name_Female_Lang_ruRU", limit: 100
    t.string "Name_Female_Lang_ptPT", limit: 100
    t.string "Name_Female_Lang_ptBR", limit: 100
    t.string "Name_Female_Lang_itIT", limit: 100
    t.string "Name_Female_Lang_Unk", limit: 100
    t.integer "Name_Female_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Name_Male_Lang_enUS", limit: 100
    t.string "Name_Male_Lang_enGB", limit: 100
    t.string "Name_Male_Lang_koKR", limit: 100
    t.string "Name_Male_Lang_frFR", limit: 100
    t.string "Name_Male_Lang_deDE", limit: 100
    t.string "Name_Male_Lang_enCN", limit: 100
    t.string "Name_Male_Lang_zhCN", limit: 100
    t.string "Name_Male_Lang_enTW", limit: 100
    t.string "Name_Male_Lang_zhTW", limit: 100
    t.string "Name_Male_Lang_esES", limit: 100
    t.string "Name_Male_Lang_esMX", limit: 100
    t.string "Name_Male_Lang_ruRU", limit: 100
    t.string "Name_Male_Lang_ptPT", limit: 100
    t.string "Name_Male_Lang_ptBR", limit: 100
    t.string "Name_Male_Lang_itIT", limit: 100
    t.string "Name_Male_Lang_Unk", limit: 100
    t.integer "Name_Male_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "FacialHairCustomization_1", limit: 100
    t.string "FacialHairCustomization_2", limit: 100
    t.string "HairCustomization", limit: 100
    t.integer "Required_Expansion", default: 0, null: false
  end

  create_table "cinematiccamera_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Cinematic camera DBC", force: :cascade do |t|
    t.string "model", limit: 100
    t.integer "soundEntry", default: 0, null: false
    t.float "locationX", default: 0.0, null: false
    t.float "locationY", default: 0.0, null: false
    t.float "locationZ", default: 0.0, null: false
    t.float "rotation", default: 0.0, null: false
  end

  create_table "cinematicsequences_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "SoundID", default: 0, null: false
    t.integer "Camera_1", default: 0, null: false
    t.integer "Camera_2", default: 0, null: false
    t.integer "Camera_3", default: 0, null: false
    t.integer "Camera_4", default: 0, null: false
    t.integer "Camera_5", default: 0, null: false
    t.integer "Camera_6", default: 0, null: false
    t.integer "Camera_7", default: 0, null: false
    t.integer "Camera_8", default: 0, null: false
  end

  create_table "command", primary_key: "name", id: { type: :string, limit: 50, default: "" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Chat System", force: :cascade do |t|
    t.integer "security", limit: 1, default: 0, null: false, unsigned: true
    t.text "help", size: :long
  end

  create_table "conditions", primary_key: ["SourceTypeOrReferenceId", "SourceGroup", "SourceEntry", "SourceId", "ElseGroup", "ConditionTypeOrReference", "ConditionTarget", "ConditionValue1", "ConditionValue2", "ConditionValue3"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Condition System", force: :cascade do |t|
    t.integer "SourceTypeOrReferenceId", default: 0, null: false
    t.integer "SourceGroup", default: 0, null: false, unsigned: true
    t.integer "SourceEntry", default: 0, null: false
    t.integer "SourceId", default: 0, null: false
    t.integer "ElseGroup", default: 0, null: false, unsigned: true
    t.integer "ConditionTypeOrReference", default: 0, null: false
    t.integer "ConditionTarget", limit: 1, default: 0, null: false, unsigned: true
    t.integer "ConditionValue1", default: 0, null: false, unsigned: true
    t.integer "ConditionValue2", default: 0, null: false, unsigned: true
    t.integer "ConditionValue3", default: 0, null: false, unsigned: true
    t.integer "NegativeCondition", limit: 1, default: 0, null: false, unsigned: true
    t.integer "ErrorType", default: 0, null: false, unsigned: true
    t.integer "ErrorTextId", default: 0, null: false, unsigned: true
    t.string "ScriptName", limit: 64, default: "", null: false
    t.string "Comment"
  end

  create_table "creature", primary_key: "guid", id: { type: :integer, comment: "Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Creature System", force: :cascade do |t|
    t.integer "id1", default: 0, null: false, comment: "Creature Identifier", unsigned: true
    t.integer "id2", default: 0, null: false, comment: "Creature Identifier", unsigned: true
    t.integer "id3", default: 0, null: false, comment: "Creature Identifier", unsigned: true
    t.integer "map", limit: 2, default: 0, null: false, comment: "Map Identifier", unsigned: true
    t.integer "zoneId", limit: 2, default: 0, null: false, comment: "Zone Identifier", unsigned: true
    t.integer "areaId", limit: 2, default: 0, null: false, comment: "Area Identifier", unsigned: true
    t.integer "spawnMask", limit: 1, default: 1, null: false, unsigned: true
    t.integer "phaseMask", default: 1, null: false, unsigned: true
    t.integer "equipment_id", limit: 1, default: 0, null: false
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.float "orientation", default: 0.0, null: false
    t.integer "spawntimesecs", default: 120, null: false, unsigned: true
    t.float "wander_distance", default: 0.0, null: false
    t.integer "currentwaypoint", default: 0, null: false, unsigned: true
    t.integer "curhealth", default: 1, null: false, unsigned: true
    t.integer "curmana", default: 0, null: false, unsigned: true
    t.integer "MovementType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "npcflag", default: 0, null: false, unsigned: true
    t.integer "unit_flags", default: 0, null: false, unsigned: true
    t.integer "dynamicflags", default: 0, null: false, unsigned: true
    t.string "ScriptName", limit: 64, default: ""
    t.integer "VerifiedBuild"
    t.integer "CreateObject", limit: 1, default: 0, null: false, unsigned: true
    t.text "Comment"
    t.index ["id1"], name: "idx_id"
    t.index ["map"], name: "idx_map"
  end

  create_table "creature_addon", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "path_id", default: 0, null: false, unsigned: true
    t.integer "mount", default: 0, null: false, unsigned: true
    t.integer "bytes1", default: 0, null: false, unsigned: true
    t.integer "bytes2", default: 0, null: false, unsigned: true
    t.integer "emote", default: 0, null: false, unsigned: true
    t.integer "visibilityDistanceType", limit: 1, default: 0, null: false, unsigned: true
    t.text "auras"
  end

  create_table "creature_classlevelstats", primary_key: ["level", "class"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "level", limit: 1, null: false, unsigned: true
    t.integer "class", limit: 1, null: false, unsigned: true
    t.integer "basehp0", default: 1, null: false, unsigned: true
    t.integer "basehp1", default: 1, null: false, unsigned: true
    t.integer "basehp2", default: 1, null: false, unsigned: true
    t.integer "basemana", default: 0, null: false, unsigned: true
    t.integer "basearmor", default: 1, null: false, unsigned: true
    t.integer "attackpower", default: 0, null: false, unsigned: true
    t.integer "rangedattackpower", default: 0, null: false, unsigned: true
    t.float "damage_base", default: 0.0, null: false
    t.float "damage_exp1", default: 0.0, null: false
    t.float "damage_exp2", default: 0.0, null: false
    t.text "comment"
  end

  create_table "creature_equip_template", primary_key: ["CreatureID", "ID"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "CreatureID", default: 0, null: false, unsigned: true
    t.integer "ID", limit: 1, default: 1, null: false, unsigned: true
    t.integer "ItemID1", default: 0, null: false, unsigned: true
    t.integer "ItemID2", default: 0, null: false, unsigned: true
    t.integer "ItemID3", default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
  end

  create_table "creature_formations", primary_key: "memberGUID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "leaderGUID", default: 0, null: false, unsigned: true
    t.float "dist", default: 0.0, null: false
    t.float "angle", default: 0.0, null: false
    t.integer "groupAI", default: 0, null: false, unsigned: true
    t.integer "point_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "point_2", limit: 2, default: 0, null: false, unsigned: true
    t.check_constraint "(`dist` >= 0) and (`angle` >= 0)", name: "creature_formations_chk_1"
  end

  create_table "creature_loot_template", primary_key: ["Entry", "Item", "Reference", "GroupId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "creature_model_info", primary_key: "DisplayID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Creature System (Model related info)", force: :cascade do |t|
    t.float "BoundingRadius", default: 0.0, null: false
    t.float "CombatReach", default: 0.0, null: false
    t.integer "Gender", limit: 1, default: 2, null: false, unsigned: true
    t.integer "DisplayID_Other_Gender", default: 0, null: false, unsigned: true
  end

  create_table "creature_movement_override", primary_key: "SpawnId", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Ground", limit: 1, unsigned: true
    t.integer "Swim", limit: 1, unsigned: true
    t.integer "Flight", limit: 1, unsigned: true
    t.integer "Rooted", limit: 1, unsigned: true
    t.integer "Chase", limit: 1, unsigned: true
    t.integer "Random", limit: 1, unsigned: true
    t.integer "InteractionPauseTimer", comment: "Time (in milliseconds) during which creature will not move after interaction with player", unsigned: true
  end

  create_table "creature_onkill_reputation", primary_key: "creature_id", id: { type: :integer, default: 0, comment: "Creature Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Creature OnKill Reputation gain", force: :cascade do |t|
    t.integer "RewOnKillRepFaction1", limit: 2, default: 0, null: false
    t.integer "RewOnKillRepFaction2", limit: 2, default: 0, null: false
    t.integer "MaxStanding1", limit: 1, default: 0, null: false
    t.integer "IsTeamAward1", limit: 1, default: 0, null: false
    t.float "RewOnKillRepValue1", default: 0.0, null: false
    t.integer "MaxStanding2", limit: 1, default: 0, null: false
    t.integer "IsTeamAward2", limit: 1, default: 0, null: false
    t.float "RewOnKillRepValue2", default: 0.0, null: false
    t.integer "TeamDependent", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "creature_questender", primary_key: ["id", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Creature System", force: :cascade do |t|
    t.integer "id", default: 0, null: false, comment: "Identifier", unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
  end

  create_table "creature_questitem", primary_key: ["CreatureEntry", "Idx"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "CreatureEntry", default: 0, null: false, unsigned: true
    t.integer "Idx", default: 0, null: false, unsigned: true
    t.integer "ItemId", default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
  end

  create_table "creature_queststarter", primary_key: ["id", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Creature System", force: :cascade do |t|
    t.integer "id", default: 0, null: false, comment: "Identifier", unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
  end

  create_table "creature_summon_groups", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "summonerId", default: 0, null: false, unsigned: true
    t.integer "summonerType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "groupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "entry", default: 0, null: false, unsigned: true
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.float "orientation", default: 0.0, null: false
    t.integer "summonType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "summonTime", default: 0, null: false, unsigned: true
    t.string "Comment", default: "", null: false
  end

  create_table "creature_template", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Creature System", force: :cascade do |t|
    t.integer "difficulty_entry_1", default: 0, null: false, unsigned: true
    t.integer "difficulty_entry_2", default: 0, null: false, unsigned: true
    t.integer "difficulty_entry_3", default: 0, null: false, unsigned: true
    t.integer "KillCredit1", default: 0, null: false, unsigned: true
    t.integer "KillCredit2", default: 0, null: false, unsigned: true
    t.string "name", limit: 100, default: "0", null: false
    t.string "subname", limit: 100
    t.string "IconName", limit: 100
    t.integer "gossip_menu_id", default: 0, null: false, unsigned: true
    t.integer "minlevel", limit: 1, default: 1, null: false, unsigned: true
    t.integer "maxlevel", limit: 1, default: 1, null: false, unsigned: true
    t.integer "exp", limit: 2, default: 0, null: false
    t.integer "faction", limit: 2, default: 0, null: false, unsigned: true
    t.integer "npcflag", default: 0, null: false, unsigned: true
    t.float "speed_walk", default: 1.0, null: false, comment: "Result of 2.5/2.5, most common value"
    t.float "speed_run", default: 1.14286, null: false, comment: "Result of 8.0/7.0, most common value"
    t.float "speed_swim", default: 1.0, null: false
    t.float "speed_flight", default: 1.0, null: false
    t.float "detection_range", default: 20.0, null: false
    t.float "scale", default: 1.0, null: false
    t.integer "rank", limit: 1, default: 0, null: false, unsigned: true
    t.integer "dmgschool", limit: 1, default: 0, null: false
    t.float "DamageModifier", default: 1.0, null: false
    t.integer "BaseAttackTime", default: 0, null: false, unsigned: true
    t.integer "RangeAttackTime", default: 0, null: false, unsigned: true
    t.float "BaseVariance", default: 1.0, null: false
    t.float "RangeVariance", default: 1.0, null: false
    t.integer "unit_class", limit: 1, default: 0, null: false, unsigned: true
    t.integer "unit_flags", default: 0, null: false, unsigned: true
    t.integer "unit_flags2", default: 0, null: false, unsigned: true
    t.integer "dynamicflags", default: 0, null: false, unsigned: true
    t.integer "family", limit: 1, default: 0, null: false
    t.integer "trainer_type", limit: 1, default: 0, null: false
    t.integer "trainer_spell", default: 0, null: false, unsigned: true
    t.integer "trainer_class", limit: 1, default: 0, null: false, unsigned: true
    t.integer "trainer_race", limit: 1, default: 0, null: false, unsigned: true
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "type_flags", default: 0, null: false, unsigned: true
    t.integer "lootid", default: 0, null: false, unsigned: true
    t.integer "pickpocketloot", default: 0, null: false, unsigned: true
    t.integer "skinloot", default: 0, null: false, unsigned: true
    t.integer "PetSpellDataId", default: 0, null: false, unsigned: true
    t.integer "VehicleId", default: 0, null: false, unsigned: true
    t.integer "mingold", default: 0, null: false, unsigned: true
    t.integer "maxgold", default: 0, null: false, unsigned: true
    t.string "AIName", limit: 64, default: "", null: false
    t.integer "MovementType", limit: 1, default: 0, null: false, unsigned: true
    t.float "HoverHeight", default: 1.0, null: false
    t.float "HealthModifier", default: 1.0, null: false
    t.float "ManaModifier", default: 1.0, null: false
    t.float "ArmorModifier", default: 1.0, null: false
    t.float "ExperienceModifier", default: 1.0, null: false
    t.integer "RacialLeader", limit: 1, default: 0, null: false, unsigned: true
    t.integer "movementId", default: 0, null: false, unsigned: true
    t.integer "RegenHealth", limit: 1, default: 1, null: false, unsigned: true
    t.integer "mechanic_immune_mask", default: 0, null: false, unsigned: true
    t.integer "spell_school_immune_mask", default: 0, null: false, unsigned: true
    t.integer "flags_extra", default: 0, null: false, unsigned: true
    t.string "ScriptName", limit: 64, default: "", null: false
    t.integer "VerifiedBuild"
    t.index ["name"], name: "idx_name"
  end

  create_table "creature_template_addon", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "path_id", default: 0, null: false, unsigned: true
    t.integer "mount", default: 0, null: false, unsigned: true
    t.integer "bytes1", default: 0, null: false, unsigned: true
    t.integer "bytes2", default: 0, null: false, unsigned: true
    t.integer "emote", default: 0, null: false, unsigned: true
    t.integer "visibilityDistanceType", limit: 1, default: 0, null: false, unsigned: true
    t.text "auras"
  end

  create_table "creature_template_locale", primary_key: ["entry", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "Name"
    t.text "Title"
    t.integer "VerifiedBuild"
  end

  create_table "creature_template_model", primary_key: ["CreatureID", "Idx"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "CreatureID", null: false, unsigned: true
    t.integer "Idx", limit: 2, default: 0, null: false, unsigned: true
    t.integer "CreatureDisplayID", null: false, unsigned: true
    t.float "DisplayScale", default: 1.0, null: false
    t.float "Probability", default: 0.0, null: false
    t.integer "VerifiedBuild", limit: 2, unsigned: true
    t.check_constraint "`Idx` <= 3", name: "creature_template_model_chk_1"
  end

  create_table "creature_template_movement", primary_key: "CreatureId", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Ground", limit: 1, unsigned: true
    t.integer "Swim", limit: 1, unsigned: true
    t.integer "Flight", limit: 1, unsigned: true
    t.integer "Rooted", limit: 1, unsigned: true
    t.integer "Chase", limit: 1, unsigned: true
    t.integer "Random", limit: 1, unsigned: true
    t.integer "InteractionPauseTimer", comment: "Time (in milliseconds) during which creature will not move after interaction with player", unsigned: true
  end

  create_table "creature_template_resistance", primary_key: ["CreatureID", "School"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "CreatureID", null: false, unsigned: true
    t.integer "School", limit: 1, null: false, unsigned: true
    t.integer "Resistance", limit: 2
    t.integer "VerifiedBuild"
    t.check_constraint "(`School` >= 1) and (`School` <= 6)", name: "creature_template_resistance_chk_1"
  end

  create_table "creature_template_spell", primary_key: ["CreatureID", "Index"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "CreatureID", null: false, unsigned: true
    t.integer "Index", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Spell", unsigned: true
    t.integer "VerifiedBuild"
    t.check_constraint "(`Index` >= 0) and (`Index` <= 7)", name: "creature_template_spell_chk_1"
  end

  create_table "creature_text", primary_key: ["CreatureID", "GroupID", "ID"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "CreatureID", default: 0, null: false, unsigned: true
    t.integer "GroupID", limit: 1, default: 0, null: false, unsigned: true
    t.integer "ID", limit: 1, default: 0, null: false, unsigned: true
    t.text "Text", size: :long
    t.integer "Type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Language", limit: 1, default: 0, null: false
    t.float "Probability", default: 0.0, null: false
    t.integer "Emote", default: 0, null: false, unsigned: true
    t.integer "Duration", default: 0, null: false, unsigned: true
    t.integer "Sound", default: 0, null: false, unsigned: true
    t.integer "BroadcastTextId", default: 0, null: false
    t.integer "TextRange", limit: 1, default: 0, null: false, unsigned: true
    t.string "comment", default: ""
    t.check_constraint "`Probability` >= 0", name: "creature_text_chk_1"
  end

  create_table "creature_text_locale", primary_key: ["CreatureID", "GroupID", "ID", "Locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "CreatureID", default: 0, null: false, unsigned: true
    t.integer "GroupID", limit: 1, default: 0, null: false, unsigned: true
    t.integer "ID", limit: 1, default: 0, null: false, unsigned: true
    t.string "Locale", limit: 4, null: false
    t.text "Text"
  end

  create_table "creaturedisplayinfo_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ModelID", default: 0, null: false
    t.integer "SoundID", default: 0, null: false
    t.integer "ExtendedDisplayInfoID", default: 0, null: false
    t.float "CreatureModelScale", default: 0.0, null: false
    t.integer "CreatureModelAlpha", default: 0, null: false
    t.string "TextureVariation_1", limit: 100
    t.string "TextureVariation_2", limit: 100
    t.string "TextureVariation_3", limit: 100
    t.string "PortraitTextureName", limit: 100
    t.integer "BloodLevel", default: 0, null: false
    t.integer "BloodID", default: 0, null: false
    t.integer "NPCSoundID", default: 0, null: false
    t.integer "ParticleColorID", default: 0, null: false
    t.integer "CreatureGeosetData", default: 0, null: false
    t.integer "ObjectEffectPackageID", default: 0, null: false
  end

  create_table "creaturedisplayinfoextra_dbc", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "DisplayRaceID", default: 0, null: false, unsigned: true
    t.integer "DisplaySexID", default: 0, null: false, unsigned: true
    t.integer "SkinID", default: 0, null: false, unsigned: true
    t.integer "FaceID", default: 0, null: false, unsigned: true
    t.integer "HairStyleID", default: 0, null: false, unsigned: true
    t.integer "HairColorID", default: 0, null: false, unsigned: true
    t.integer "FacialHairID", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay1", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay2", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay3", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay4", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay5", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay6", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay7", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay8", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay9", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay10", default: 0, null: false, unsigned: true
    t.integer "NPCItemDisplay11", default: 0, null: false, unsigned: true
    t.integer "Flags", default: 0, null: false, unsigned: true
    t.string "BakeName", limit: 100, null: false
  end

  create_table "creaturefamily_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "MinScale", default: 0.0, null: false
    t.integer "MinScaleLevel", default: 0, null: false
    t.float "MaxScale", default: 0.0, null: false
    t.integer "MaxScaleLevel", default: 0, null: false
    t.integer "SkillLine_1", default: 0, null: false
    t.integer "SkillLine_2", default: 0, null: false
    t.integer "PetFoodMask", default: 0, null: false
    t.integer "PetTalentType", default: 0, null: false
    t.integer "CategoryEnumID", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "IconFile", limit: 100
  end

  create_table "creaturemodeldata_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Flags", default: 0, null: false
    t.string "ModelName", limit: 100
    t.integer "SizeClass", default: 0, null: false
    t.float "ModelScale", default: 0.0, null: false
    t.integer "BloodID", default: 0, null: false
    t.integer "FootprintTextureID", default: 0, null: false
    t.float "FootprintTextureLength", default: 0.0, null: false
    t.float "FootprintTextureWidth", default: 0.0, null: false
    t.float "FootprintParticleScale", default: 0.0, null: false
    t.integer "FoleyMaterialID", default: 0, null: false
    t.integer "FootstepShakeSize", default: 0, null: false
    t.integer "DeathThudShakeSize", default: 0, null: false
    t.integer "SoundID", default: 0, null: false
    t.float "CollisionWidth", default: 0.0, null: false
    t.float "CollisionHeight", default: 0.0, null: false
    t.float "MountHeight", default: 0.0, null: false
    t.float "GeoBoxMinX", default: 0.0, null: false
    t.float "GeoBoxMinY", default: 0.0, null: false
    t.float "GeoBoxMinZ", default: 0.0, null: false
    t.float "GeoBoxMaxX", default: 0.0, null: false
    t.float "GeoBoxMaxY", default: 0.0, null: false
    t.float "GeoBoxMaxZ", default: 0.0, null: false
    t.float "WorldEffectScale", default: 0.0, null: false
    t.float "AttachedEffectScale", default: 0.0, null: false
    t.float "MissileCollisionRadius", default: 0.0, null: false
    t.float "MissileCollisionPush", default: 0.0, null: false
    t.float "MissileCollisionRaise", default: 0.0, null: false
  end

  create_table "creaturespelldata_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Spells_1", default: 0, null: false
    t.integer "Spells_2", default: 0, null: false
    t.integer "Spells_3", default: 0, null: false
    t.integer "Spells_4", default: 0, null: false
    t.integer "Availability_1", default: 0, null: false
    t.integer "Availability_2", default: 0, null: false
    t.integer "Availability_3", default: 0, null: false
    t.integer "Availability_4", default: 0, null: false
  end

  create_table "creaturetype_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "Flags", default: 0, null: false
  end

  create_table "currencytypes_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ItemID", default: 0, null: false
    t.integer "CategoryID", default: 0, null: false
    t.integer "BitIndex", default: 0, null: false
  end

  create_table "destructiblemodeldata_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "State0Wmo", default: 0, null: false
    t.integer "State0DestructionDoodadSet", default: 0, null: false
    t.integer "State0ImpactEffectDoodadSet", default: 0, null: false
    t.integer "State0AmbientDoodadSet", default: 0, null: false
    t.integer "State1Wmo", default: 0, null: false
    t.integer "State1DestructionDoodadSet", default: 0, null: false
    t.integer "State1ImpactEffectDoodadSet", default: 0, null: false
    t.integer "State1AmbientDoodadSet", default: 0, null: false
    t.integer "State2Wmo", default: 0, null: false
    t.integer "State2DestructionDoodadSet", default: 0, null: false
    t.integer "State2ImpactEffectDoodadSet", default: 0, null: false
    t.integer "State2AmbientDoodadSet", default: 0, null: false
    t.integer "State3Wmo", default: 0, null: false
    t.integer "State3DestructionDoodadSet", default: 0, null: false
    t.integer "State3ImpactEffectDoodadSet", default: 0, null: false
    t.integer "State3AmbientDoodadSet", default: 0, null: false
    t.integer "Field17", default: 0, null: false
    t.integer "Field18", default: 0, null: false
  end

  create_table "disables", primary_key: ["sourceType", "entry"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "sourceType", null: false, unsigned: true
    t.integer "entry", null: false, unsigned: true
    t.integer "flags", limit: 1, default: 0, null: false, unsigned: true
    t.string "params_0", default: "", null: false
    t.string "params_1", default: "", null: false
    t.string "comment", default: "", null: false
  end

  create_table "disenchant_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "dungeon_access_requirements", primary_key: ["dungeon_access_id", "requirement_type", "requirement_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Add (multiple) requirements before being able to enter a dungeon/raid", force: :cascade do |t|
    t.integer "dungeon_access_id", limit: 1, null: false, comment: "ID from dungeon_access_template", unsigned: true
    t.integer "requirement_type", limit: 1, null: false, comment: "0 = achiev, 1 = quest, 2 = item", unsigned: true
    t.integer "requirement_id", null: false, comment: "Achiev/quest/item ID", unsigned: true
    t.string "requirement_note", comment: "Optional msg shown ingame to player if he cannot enter. You can add extra info"
    t.integer "faction", limit: 1, default: 2, null: false, comment: "0 = Alliance, 1 = Horde, 2 = Both factions", unsigned: true
    t.integer "priority", limit: 1, comment: "Priority order for the requirement, sorted by type. 0 is the highest priority", unsigned: true
    t.integer "leader_only", limit: 1, default: 0, null: false, comment: "0 = check the requirement for the player trying to enter, 1 = check the requirement for the party leader"
    t.string "comment"
  end

  create_table "dungeon_access_template", id: { type: :integer, limit: 1, comment: "The dungeon template ID", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Dungeon/raid access template and single requirements", force: :cascade do |t|
    t.integer "map_id", comment: "Map ID from instance_template", unsigned: true
    t.integer "difficulty", limit: 1, default: 0, null: false, comment: "5 man: 0 = normal, 1 = heroic, 2 = epic (not implemented) | 10 man: 0 = normal, 2 = heroic | 25 man: 1 = normal, 3 = heroic", unsigned: true
    t.integer "min_level", limit: 1, unsigned: true
    t.integer "max_level", limit: 1, unsigned: true
    t.integer "min_avg_item_level", limit: 2, comment: "Min average ilvl required to enter", unsigned: true
    t.string "comment", comment: "Dungeon Name 5/10/25/40 man - Normal/Heroic"
    t.index ["map_id"], name: "FK_dungeon_access_template__instance_template"
  end

  create_table "dungeonencounter_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MapID", default: 0, null: false
    t.integer "Difficulty", default: 0, null: false
    t.integer "OrderIndex", default: 0, null: false
    t.integer "Bit", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "SpellIconID", default: 0, null: false
  end

  create_table "durabilitycosts_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "WeaponSubClassCost_1", default: 0, null: false
    t.integer "WeaponSubClassCost_2", default: 0, null: false
    t.integer "WeaponSubClassCost_3", default: 0, null: false
    t.integer "WeaponSubClassCost_4", default: 0, null: false
    t.integer "WeaponSubClassCost_5", default: 0, null: false
    t.integer "WeaponSubClassCost_6", default: 0, null: false
    t.integer "WeaponSubClassCost_7", default: 0, null: false
    t.integer "WeaponSubClassCost_8", default: 0, null: false
    t.integer "WeaponSubClassCost_9", default: 0, null: false
    t.integer "WeaponSubClassCost_10", default: 0, null: false
    t.integer "WeaponSubClassCost_11", default: 0, null: false
    t.integer "WeaponSubClassCost_12", default: 0, null: false
    t.integer "WeaponSubClassCost_13", default: 0, null: false
    t.integer "WeaponSubClassCost_14", default: 0, null: false
    t.integer "WeaponSubClassCost_15", default: 0, null: false
    t.integer "WeaponSubClassCost_16", default: 0, null: false
    t.integer "WeaponSubClassCost_17", default: 0, null: false
    t.integer "WeaponSubClassCost_18", default: 0, null: false
    t.integer "WeaponSubClassCost_19", default: 0, null: false
    t.integer "WeaponSubClassCost_20", default: 0, null: false
    t.integer "WeaponSubClassCost_21", default: 0, null: false
    t.integer "ArmorSubClassCost_1", default: 0, null: false
    t.integer "ArmorSubClassCost_2", default: 0, null: false
    t.integer "ArmorSubClassCost_3", default: 0, null: false
    t.integer "ArmorSubClassCost_4", default: 0, null: false
    t.integer "ArmorSubClassCost_5", default: 0, null: false
    t.integer "ArmorSubClassCost_6", default: 0, null: false
    t.integer "ArmorSubClassCost_7", default: 0, null: false
    t.integer "ArmorSubClassCost_8", default: 0, null: false
  end

  create_table "durabilityquality_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "emotes_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "EmoteSlashCommand", limit: 100
    t.integer "AnimID", default: 0, null: false
    t.integer "EmoteFlags", default: 0, null: false
    t.integer "EmoteSpecProc", default: 0, null: false
    t.integer "EmoteSpecProcParam", default: 0, null: false
    t.integer "EventSoundID", default: 0, null: false
  end

  create_table "emotestext_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name", limit: 100
    t.integer "EmoteID", default: 0, null: false
    t.integer "EmoteText_1", default: 0, null: false
    t.integer "EmoteText_2", default: 0, null: false
    t.integer "EmoteText_3", default: 0, null: false
    t.integer "EmoteText_4", default: 0, null: false
    t.integer "EmoteText_5", default: 0, null: false
    t.integer "EmoteText_6", default: 0, null: false
    t.integer "EmoteText_7", default: 0, null: false
    t.integer "EmoteText_8", default: 0, null: false
    t.integer "EmoteText_9", default: 0, null: false
    t.integer "EmoteText_10", default: 0, null: false
    t.integer "EmoteText_11", default: 0, null: false
    t.integer "EmoteText_12", default: 0, null: false
    t.integer "EmoteText_13", default: 0, null: false
    t.integer "EmoteText_14", default: 0, null: false
    t.integer "EmoteText_15", default: 0, null: false
    t.integer "EmoteText_16", default: 0, null: false
  end

  create_table "event_scripts", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "delay", default: 0, null: false, unsigned: true
    t.integer "command", default: 0, null: false, unsigned: true
    t.integer "datalong", default: 0, null: false, unsigned: true
    t.integer "datalong2", default: 0, null: false, unsigned: true
    t.integer "dataint", default: 0, null: false
    t.float "x", default: 0.0, null: false
    t.float "y", default: 0.0, null: false
    t.float "z", default: 0.0, null: false
    t.float "o", default: 0.0, null: false
  end

  create_table "exploration_basexp", primary_key: "level", id: { type: :integer, limit: 1, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Exploration System", force: :cascade do |t|
    t.integer "basexp", default: 0, null: false
  end

  create_table "faction_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ReputationIndex", default: 0, null: false
    t.integer "ReputationRaceMask_1", default: 0, null: false
    t.integer "ReputationRaceMask_2", default: 0, null: false
    t.integer "ReputationRaceMask_3", default: 0, null: false
    t.integer "ReputationRaceMask_4", default: 0, null: false
    t.integer "ReputationClassMask_1", default: 0, null: false
    t.integer "ReputationClassMask_2", default: 0, null: false
    t.integer "ReputationClassMask_3", default: 0, null: false
    t.integer "ReputationClassMask_4", default: 0, null: false
    t.integer "ReputationBase_1", default: 0, null: false
    t.integer "ReputationBase_2", default: 0, null: false
    t.integer "ReputationBase_3", default: 0, null: false
    t.integer "ReputationBase_4", default: 0, null: false
    t.integer "ReputationFlags_1", default: 0, null: false
    t.integer "ReputationFlags_2", default: 0, null: false
    t.integer "ReputationFlags_3", default: 0, null: false
    t.integer "ReputationFlags_4", default: 0, null: false
    t.integer "ParentFactionID", default: 0, null: false
    t.float "ParentFactionMod_1", default: 0.0, null: false
    t.float "ParentFactionMod_2", default: 0.0, null: false
    t.integer "ParentFactionCap_1", default: 0, null: false
    t.integer "ParentFactionCap_2", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Description_Lang_enUS", limit: 300
    t.string "Description_Lang_enGB", limit: 300
    t.string "Description_Lang_koKR", limit: 300
    t.string "Description_Lang_frFR", limit: 300
    t.string "Description_Lang_deDE", limit: 300
    t.string "Description_Lang_enCN", limit: 300
    t.string "Description_Lang_zhCN", limit: 300
    t.string "Description_Lang_enTW", limit: 300
    t.string "Description_Lang_zhTW", limit: 300
    t.string "Description_Lang_esES", limit: 300
    t.string "Description_Lang_esMX", limit: 300
    t.string "Description_Lang_ruRU", limit: 300
    t.string "Description_Lang_ptPT", limit: 300
    t.string "Description_Lang_ptBR", limit: 300
    t.string "Description_Lang_itIT", limit: 300
    t.string "Description_Lang_Unk", limit: 100
    t.integer "Description_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "factiontemplate_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Faction", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "FactionGroup", default: 0, null: false
    t.integer "FriendGroup", default: 0, null: false
    t.integer "EnemyGroup", default: 0, null: false
    t.integer "Enemies_1", default: 0, null: false
    t.integer "Enemies_2", default: 0, null: false
    t.integer "Enemies_3", default: 0, null: false
    t.integer "Enemies_4", default: 0, null: false
    t.integer "Friend_1", default: 0, null: false
    t.integer "Friend_2", default: 0, null: false
    t.integer "Friend_3", default: 0, null: false
    t.integer "Friend_4", default: 0, null: false
  end

  create_table "fishing_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "game_event", primary_key: "eventEntry", id: { type: :integer, limit: 1, comment: "Entry of the game event", unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.timestamp "start_time", default: "2000-01-01 17:00:00", comment: "Absolute start date, the event will never start before"
    t.timestamp "end_time", default: "2000-01-01 17:00:00", comment: "Absolute end date, the event will never start after"
    t.bigint "occurence", default: 5184000, null: false, comment: "Delay in minutes between occurences of the event", unsigned: true
    t.bigint "length", default: 2592000, null: false, comment: "Length in minutes of the event", unsigned: true
    t.integer "holiday", default: 0, null: false, comment: "Client side holiday id", unsigned: true
    t.integer "holidayStage", limit: 1, default: 0, null: false, unsigned: true
    t.string "description", comment: "Description of the event displayed in console"
    t.integer "world_event", limit: 1, default: 0, null: false, comment: "0 if normal event, 1 if world event", unsigned: true
    t.integer "announce", limit: 1, default: 2, null: false, comment: "0 dont announce, 1 announce, 2 value from config", unsigned: true
  end

  create_table "game_event_arena_seasons", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event", unsigned: true
    t.integer "season", limit: 1, null: false, comment: "Arena season number", unsigned: true
    t.index ["season", "eventEntry"], name: "season", unique: true
  end

  create_table "game_event_battleground_holiday", primary_key: "eventEntry", id: { type: :integer, limit: 1, comment: "Entry of the game event", unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "bgflag", default: 0, null: false, unsigned: true
  end

  create_table "game_event_condition", primary_key: ["eventEntry", "condition_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event", unsigned: true
    t.integer "condition_id", default: 0, null: false, unsigned: true
    t.float "req_num", default: 0.0
    t.integer "max_world_state_field", limit: 2, default: 0, null: false, unsigned: true
    t.integer "done_world_state_field", limit: 2, default: 0, null: false, unsigned: true
    t.string "description", limit: 25, default: "", null: false
  end

  create_table "game_event_creature", primary_key: ["guid", "eventEntry"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event. Put negative entry to remove during event."
    t.integer "guid", null: false, unsigned: true
  end

  create_table "game_event_creature_quest", primary_key: ["id", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event.", unsigned: true
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "quest", default: 0, null: false, unsigned: true
  end

  create_table "game_event_gameobject", primary_key: ["guid", "eventEntry"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event. Put negative entry to remove during event."
    t.integer "guid", null: false, unsigned: true
  end

  create_table "game_event_gameobject_quest", primary_key: ["id", "quest", "eventEntry"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event", unsigned: true
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "quest", default: 0, null: false, unsigned: true
  end

  create_table "game_event_model_equip", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event."
    t.integer "modelid", default: 0, null: false, unsigned: true
    t.integer "equipment_id", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "game_event_npc_vendor", primary_key: ["guid", "item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event."
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "slot", limit: 2, default: 0, null: false
    t.integer "item", default: 0, null: false, unsigned: true
    t.integer "maxcount", default: 0, null: false, unsigned: true
    t.integer "incrtime", default: 0, null: false, unsigned: true
    t.integer "ExtendedCost", default: 0, null: false, unsigned: true
    t.index ["slot"], name: "slot"
  end

  create_table "game_event_npcflag", primary_key: ["guid", "eventEntry"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event", unsigned: true
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "npcflag", default: 0, null: false, unsigned: true
  end

  create_table "game_event_pool", primary_key: "pool_entry", id: { type: :integer, default: 0, comment: "Id of the pool", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event. Put negative entry to remove during event."
  end

  create_table "game_event_prerequisite", primary_key: ["eventEntry", "prerequisite_event"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event", unsigned: true
    t.integer "prerequisite_event", null: false, unsigned: true
  end

  create_table "game_event_quest_condition", primary_key: "quest", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, comment: "Entry of the game event.", unsigned: true
    t.integer "condition_id", default: 0, null: false, unsigned: true
    t.float "num", default: 0.0
  end

  create_table "game_event_seasonal_questrelation", primary_key: ["questId", "eventEntry"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "questId", null: false, comment: "Quest Identifier", unsigned: true
    t.integer "eventEntry", default: 0, null: false, comment: "Entry of the game event", unsigned: true
    t.index ["questId"], name: "idx_quest"
  end

  create_table "game_graveyard", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Map", default: 0, null: false
    t.float "x", default: 0.0, null: false
    t.float "y", default: 0.0, null: false
    t.float "z", default: 0.0, null: false
    t.string "Comment"
  end

  create_table "game_tele", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Tele Command", force: :cascade do |t|
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.float "orientation", default: 0.0, null: false
    t.integer "map", limit: 2, default: 0, null: false, unsigned: true
    t.string "name", limit: 100, default: "", null: false
  end

  create_table "game_weather", primary_key: "zone", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Weather System", force: :cascade do |t|
    t.integer "spring_rain_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "spring_snow_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "spring_storm_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "summer_rain_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "summer_snow_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "summer_storm_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "fall_rain_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "fall_snow_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "fall_storm_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "winter_rain_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "winter_snow_chance", limit: 1, default: 25, null: false, unsigned: true
    t.integer "winter_storm_chance", limit: 1, default: 25, null: false, unsigned: true
    t.string "ScriptName", limit: 64, default: "", null: false
  end

  create_table "gameobject", primary_key: "guid", id: { type: :integer, comment: "Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Gameobject System", force: :cascade do |t|
    t.integer "id", default: 0, null: false, comment: "Gameobject Identifier", unsigned: true
    t.integer "map", limit: 2, default: 0, null: false, comment: "Map Identifier", unsigned: true
    t.integer "zoneId", limit: 2, default: 0, null: false, comment: "Zone Identifier", unsigned: true
    t.integer "areaId", limit: 2, default: 0, null: false, comment: "Area Identifier", unsigned: true
    t.integer "spawnMask", limit: 1, default: 1, null: false, unsigned: true
    t.integer "phaseMask", default: 1, null: false, unsigned: true
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.float "orientation", default: 0.0, null: false
    t.float "rotation0", default: 0.0, null: false
    t.float "rotation1", default: 0.0, null: false
    t.float "rotation2", default: 0.0, null: false
    t.float "rotation3", default: 0.0, null: false
    t.integer "spawntimesecs", default: 0, null: false
    t.integer "animprogress", limit: 1, default: 0, null: false, unsigned: true
    t.integer "state", limit: 1, default: 0, null: false, unsigned: true
    t.string "ScriptName", limit: 64, default: ""
    t.integer "VerifiedBuild"
    t.text "Comment"
  end

  create_table "gameobject_addon", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "invisibilityType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "invisibilityValue", default: 0, null: false, unsigned: true
  end

  create_table "gameobject_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "gameobject_questender", primary_key: ["id", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
  end

  create_table "gameobject_questitem", primary_key: ["GameObjectEntry", "Idx"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "GameObjectEntry", default: 0, null: false, unsigned: true
    t.integer "Idx", default: 0, null: false, unsigned: true
    t.integer "ItemId", default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
  end

  create_table "gameobject_queststarter", primary_key: ["id", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
  end

  create_table "gameobject_template", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Gameobject System", force: :cascade do |t|
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "displayId", default: 0, null: false, unsigned: true
    t.string "name", limit: 100, default: "", null: false
    t.string "IconName", limit: 100, default: "", null: false
    t.string "castBarCaption", limit: 100, default: "", null: false
    t.string "unk1", limit: 100, default: "", null: false
    t.float "size", default: 1.0, null: false
    t.integer "Data0", default: 0, null: false, unsigned: true
    t.integer "Data1", default: 0, null: false
    t.integer "Data2", default: 0, null: false, unsigned: true
    t.integer "Data3", default: 0, null: false, unsigned: true
    t.integer "Data4", default: 0, null: false, unsigned: true
    t.integer "Data5", default: 0, null: false, unsigned: true
    t.integer "Data6", default: 0, null: false
    t.integer "Data7", default: 0, null: false, unsigned: true
    t.integer "Data8", default: 0, null: false, unsigned: true
    t.integer "Data9", default: 0, null: false, unsigned: true
    t.integer "Data10", default: 0, null: false, unsigned: true
    t.integer "Data11", default: 0, null: false, unsigned: true
    t.integer "Data12", default: 0, null: false, unsigned: true
    t.integer "Data13", default: 0, null: false, unsigned: true
    t.integer "Data14", default: 0, null: false, unsigned: true
    t.integer "Data15", default: 0, null: false, unsigned: true
    t.integer "Data16", default: 0, null: false, unsigned: true
    t.integer "Data17", default: 0, null: false, unsigned: true
    t.integer "Data18", default: 0, null: false, unsigned: true
    t.integer "Data19", default: 0, null: false, unsigned: true
    t.integer "Data20", default: 0, null: false, unsigned: true
    t.integer "Data21", default: 0, null: false, unsigned: true
    t.integer "Data22", default: 0, null: false, unsigned: true
    t.integer "Data23", default: 0, null: false, unsigned: true
    t.string "AIName", limit: 64, default: "", null: false
    t.string "ScriptName", limit: 64, default: "", null: false
    t.integer "VerifiedBuild"
    t.index ["name"], name: "idx_name"
  end

  create_table "gameobject_template_addon", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "faction", limit: 2, default: 0, null: false, unsigned: true
    t.integer "flags", default: 0, null: false, unsigned: true
    t.integer "mingold", default: 0, null: false, unsigned: true
    t.integer "maxgold", default: 0, null: false, unsigned: true
    t.integer "artkit0", default: 0, null: false
    t.integer "artkit1", default: 0, null: false
    t.integer "artkit2", default: 0, null: false
    t.integer "artkit3", default: 0, null: false
  end

  create_table "gameobject_template_locale", primary_key: ["entry", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "name"
    t.text "castBarCaption"
    t.integer "VerifiedBuild"
  end

  create_table "gameobjectartkit_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Texture_1", default: 0, null: false
    t.integer "Texture_2", default: 0, null: false
    t.integer "Texture_3", default: 0, null: false
    t.integer "Attach_Model_1", default: 0, null: false
    t.integer "Attach_Model_2", default: 0, null: false
    t.integer "Attach_Model_3", default: 0, null: false
    t.integer "Attach_Model_4", default: 0, null: false
  end

  create_table "gameobjectdisplayinfo_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "ModelName", limit: 200
    t.integer "Sound_1", default: 0, null: false
    t.integer "Sound_2", default: 0, null: false
    t.integer "Sound_3", default: 0, null: false
    t.integer "Sound_4", default: 0, null: false
    t.integer "Sound_5", default: 0, null: false
    t.integer "Sound_6", default: 0, null: false
    t.integer "Sound_7", default: 0, null: false
    t.integer "Sound_8", default: 0, null: false
    t.integer "Sound_9", default: 0, null: false
    t.integer "Sound_10", default: 0, null: false
    t.float "GeoBoxMinX", default: 0.0, null: false
    t.float "GeoBoxMinY", default: 0.0, null: false
    t.float "GeoBoxMinZ", default: 0.0, null: false
    t.float "GeoBoxMaxX", default: 0.0, null: false
    t.float "GeoBoxMaxY", default: 0.0, null: false
    t.float "GeoBoxMaxZ", default: 0.0, null: false
    t.integer "ObjectEffectPackageID", default: 0, null: false
  end

  create_table "gemproperties_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Enchant_Id", default: 0, null: false
    t.integer "Maxcount_Inv", default: 0, null: false
    t.integer "Maxcount_Item", default: 0, null: false
    t.integer "Type", default: 0, null: false
  end

  create_table "glyphproperties_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "SpellID", default: 0, null: false
    t.integer "GlyphSlotFlags", default: 0, null: false
    t.integer "SpellIconID", default: 0, null: false
  end

  create_table "glyphslot_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Type", default: 0, null: false
    t.integer "Tooltip", default: 0, null: false
  end

  create_table "gossip_menu", primary_key: ["MenuID", "TextID"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MenuID", default: 0, null: false, unsigned: true
    t.integer "TextID", default: 0, null: false, unsigned: true
  end

  create_table "gossip_menu_option", primary_key: ["MenuID", "OptionID"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MenuID", default: 0, null: false, unsigned: true
    t.integer "OptionID", limit: 2, default: 0, null: false, unsigned: true
    t.integer "OptionIcon", default: 0, null: false, unsigned: true
    t.text "OptionText"
    t.integer "OptionBroadcastTextID", default: 0, null: false
    t.integer "OptionType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "OptionNpcFlag", default: 0, null: false, unsigned: true
    t.integer "ActionMenuID", default: 0, null: false, unsigned: true
    t.integer "ActionPoiID", default: 0, null: false, unsigned: true
    t.integer "BoxCoded", limit: 1, default: 0, null: false, unsigned: true
    t.integer "BoxMoney", default: 0, null: false, unsigned: true
    t.text "BoxText"
    t.integer "BoxBroadcastTextID", default: 0, null: false
    t.integer "VerifiedBuild"
  end

  create_table "gossip_menu_option_locale", primary_key: ["MenuID", "OptionID", "Locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MenuID", default: 0, null: false, unsigned: true
    t.integer "OptionID", limit: 2, default: 0, null: false, unsigned: true
    t.string "Locale", limit: 4, null: false
    t.text "OptionText"
    t.text "BoxText"
  end

  create_table "graveyard_zone", primary_key: ["ID", "GhostZone"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Trigger System", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.integer "GhostZone", default: 0, null: false, unsigned: true
    t.integer "Faction", limit: 2, default: 0, null: false, unsigned: true
    t.text "Comment"
  end

  create_table "gtbarbershopcostbase_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtchancetomeleecrit_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtchancetomeleecritbase_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtchancetospellcrit_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtchancetospellcritbase_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtcombatratings_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtnpcmanacostscaler_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtoctclasscombatratingscalar_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtoctregenhp_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtregenhpperspt_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "gtregenmpperspt_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "holiday_dates", primary_key: ["id", "date_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", null: false, unsigned: true
    t.integer "date_id", limit: 1, null: false, unsigned: true
    t.integer "date_value", null: false, unsigned: true
    t.integer "holiday_duration", default: 0, null: false, unsigned: true
  end

  create_table "holidays_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Duration_1", default: 0, null: false
    t.integer "Duration_2", default: 0, null: false
    t.integer "Duration_3", default: 0, null: false
    t.integer "Duration_4", default: 0, null: false
    t.integer "Duration_5", default: 0, null: false
    t.integer "Duration_6", default: 0, null: false
    t.integer "Duration_7", default: 0, null: false
    t.integer "Duration_8", default: 0, null: false
    t.integer "Duration_9", default: 0, null: false
    t.integer "Duration_10", default: 0, null: false
    t.integer "Date_1", default: 0, null: false
    t.integer "Date_2", default: 0, null: false
    t.integer "Date_3", default: 0, null: false
    t.integer "Date_4", default: 0, null: false
    t.integer "Date_5", default: 0, null: false
    t.integer "Date_6", default: 0, null: false
    t.integer "Date_7", default: 0, null: false
    t.integer "Date_8", default: 0, null: false
    t.integer "Date_9", default: 0, null: false
    t.integer "Date_10", default: 0, null: false
    t.integer "Date_11", default: 0, null: false
    t.integer "Date_12", default: 0, null: false
    t.integer "Date_13", default: 0, null: false
    t.integer "Date_14", default: 0, null: false
    t.integer "Date_15", default: 0, null: false
    t.integer "Date_16", default: 0, null: false
    t.integer "Date_17", default: 0, null: false
    t.integer "Date_18", default: 0, null: false
    t.integer "Date_19", default: 0, null: false
    t.integer "Date_20", default: 0, null: false
    t.integer "Date_21", default: 0, null: false
    t.integer "Date_22", default: 0, null: false
    t.integer "Date_23", default: 0, null: false
    t.integer "Date_24", default: 0, null: false
    t.integer "Date_25", default: 0, null: false
    t.integer "Date_26", default: 0, null: false
    t.integer "Region", default: 0, null: false
    t.integer "Looping", default: 0, null: false
    t.integer "CalendarFlags_1", default: 0, null: false
    t.integer "CalendarFlags_2", default: 0, null: false
    t.integer "CalendarFlags_3", default: 0, null: false
    t.integer "CalendarFlags_4", default: 0, null: false
    t.integer "CalendarFlags_5", default: 0, null: false
    t.integer "CalendarFlags_6", default: 0, null: false
    t.integer "CalendarFlags_7", default: 0, null: false
    t.integer "CalendarFlags_8", default: 0, null: false
    t.integer "CalendarFlags_9", default: 0, null: false
    t.integer "CalendarFlags_10", default: 0, null: false
    t.integer "HolidayNameID", default: 0, null: false
    t.integer "HolidayDescriptionID", default: 0, null: false
    t.string "TextureFilename", limit: 100
    t.integer "Priority", default: 0, null: false
    t.integer "CalendarFilterType", default: 0, null: false
    t.integer "Flags", default: 0, null: false
  end

  create_table "instance_encounters", primary_key: "entry", id: { type: :integer, comment: "Unique entry from DungeonEncounter.dbc", unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "creditType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "creditEntry", default: 0, null: false, unsigned: true
    t.integer "lastEncounterDungeon", limit: 2, default: 0, null: false, comment: "If not 0, LfgDungeon.dbc entry for the instance it is last encounter in", unsigned: true
    t.string "comment", default: "", null: false
  end

  create_table "instance_template", primary_key: "map", id: { type: :integer, limit: 2, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "parent", limit: 2, null: false, unsigned: true
    t.string "script", limit: 128, default: "", null: false
    t.integer "allowMount", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "item_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ClassID", default: 0, null: false
    t.integer "SubclassID", default: 0, null: false
    t.integer "Sound_Override_Subclassid", default: 0, null: false
    t.integer "Material", default: 0, null: false
    t.integer "DisplayInfoID", default: 0, null: false
    t.integer "InventoryType", default: 0, null: false
    t.integer "SheatheType", default: 0, null: false
  end

  create_table "item_enchantment_template", primary_key: ["entry", "ench"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Item Random Enchantment System", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, unsigned: true
    t.integer "ench", default: 0, null: false, unsigned: true
    t.float "chance", default: 0.0, null: false
    t.check_constraint "`chance` >= 0", name: "item_enchantment_template_chk_1"
  end

  create_table "item_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "item_set_names", primary_key: "entry", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "InventoryType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
  end

  create_table "item_set_names_locale", primary_key: ["ID", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "Name"
    t.integer "VerifiedBuild"
  end

  create_table "item_template", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Item System", force: :cascade do |t|
    t.integer "class", limit: 1, default: 0, null: false, unsigned: true
    t.integer "subclass", limit: 1, default: 0, null: false, unsigned: true
    t.integer "SoundOverrideSubclass", limit: 1, default: -1, null: false
    t.string "name", default: "", null: false
    t.integer "displayid", default: 0, null: false, unsigned: true
    t.integer "Quality", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Flags", default: 0, null: false, unsigned: true
    t.integer "FlagsExtra", default: 0, null: false, unsigned: true
    t.integer "BuyCount", limit: 1, default: 1, null: false, unsigned: true
    t.bigint "BuyPrice", default: 0, null: false
    t.integer "SellPrice", default: 0, null: false, unsigned: true
    t.integer "InventoryType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "AllowableClass", default: -1, null: false
    t.integer "AllowableRace", default: -1, null: false
    t.integer "ItemLevel", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredLevel", limit: 1, default: 0, null: false, unsigned: true
    t.integer "RequiredSkill", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredSkillRank", limit: 2, default: 0, null: false, unsigned: true
    t.integer "requiredspell", default: 0, null: false, unsigned: true
    t.integer "requiredhonorrank", default: 0, null: false, unsigned: true
    t.integer "RequiredCityRank", default: 0, null: false, unsigned: true
    t.integer "RequiredReputationFaction", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredReputationRank", limit: 2, default: 0, null: false, unsigned: true
    t.integer "maxcount", default: 0, null: false
    t.integer "stackable", default: 1
    t.integer "ContainerSlots", limit: 1, default: 0, null: false, unsigned: true
    t.integer "StatsCount", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_type1", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value1", default: 0, null: false
    t.integer "stat_type2", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value2", default: 0, null: false
    t.integer "stat_type3", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value3", default: 0, null: false
    t.integer "stat_type4", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value4", default: 0, null: false
    t.integer "stat_type5", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value5", default: 0, null: false
    t.integer "stat_type6", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value6", default: 0, null: false
    t.integer "stat_type7", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value7", default: 0, null: false
    t.integer "stat_type8", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value8", default: 0, null: false
    t.integer "stat_type9", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value9", default: 0, null: false
    t.integer "stat_type10", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stat_value10", default: 0, null: false
    t.integer "ScalingStatDistribution", limit: 2, default: 0, null: false
    t.integer "ScalingStatValue", default: 0, null: false, unsigned: true
    t.float "dmg_min1", default: 0.0, null: false
    t.float "dmg_max1", default: 0.0, null: false
    t.integer "dmg_type1", limit: 1, default: 0, null: false, unsigned: true
    t.float "dmg_min2", default: 0.0, null: false
    t.float "dmg_max2", default: 0.0, null: false
    t.integer "dmg_type2", limit: 1, default: 0, null: false, unsigned: true
    t.integer "armor", default: 0, null: false, unsigned: true
    t.integer "holy_res", limit: 2
    t.integer "fire_res", limit: 2
    t.integer "nature_res", limit: 2
    t.integer "frost_res", limit: 2
    t.integer "shadow_res", limit: 2
    t.integer "arcane_res", limit: 2
    t.integer "delay", limit: 2, default: 1000, null: false, unsigned: true
    t.integer "ammo_type", limit: 1, default: 0, null: false, unsigned: true
    t.float "RangedModRange", default: 0.0, null: false
    t.integer "spellid_1", default: 0, null: false
    t.integer "spelltrigger_1", limit: 1, default: 0, null: false, unsigned: true
    t.integer "spellcharges_1", limit: 2, default: 0, null: false
    t.float "spellppmRate_1", default: 0.0, null: false
    t.integer "spellcooldown_1", default: -1, null: false
    t.integer "spellcategory_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "spellcategorycooldown_1", default: -1, null: false
    t.integer "spellid_2", default: 0, null: false
    t.integer "spelltrigger_2", limit: 1, default: 0, null: false, unsigned: true
    t.integer "spellcharges_2", limit: 2, default: 0, null: false
    t.float "spellppmRate_2", default: 0.0, null: false
    t.integer "spellcooldown_2", default: -1, null: false
    t.integer "spellcategory_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "spellcategorycooldown_2", default: -1, null: false
    t.integer "spellid_3", default: 0, null: false
    t.integer "spelltrigger_3", limit: 1, default: 0, null: false, unsigned: true
    t.integer "spellcharges_3", limit: 2, default: 0, null: false
    t.float "spellppmRate_3", default: 0.0, null: false
    t.integer "spellcooldown_3", default: -1, null: false
    t.integer "spellcategory_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "spellcategorycooldown_3", default: -1, null: false
    t.integer "spellid_4", default: 0, null: false
    t.integer "spelltrigger_4", limit: 1, default: 0, null: false, unsigned: true
    t.integer "spellcharges_4", limit: 2, default: 0, null: false
    t.float "spellppmRate_4", default: 0.0, null: false
    t.integer "spellcooldown_4", default: -1, null: false
    t.integer "spellcategory_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "spellcategorycooldown_4", default: -1, null: false
    t.integer "spellid_5", default: 0, null: false
    t.integer "spelltrigger_5", limit: 1, default: 0, null: false, unsigned: true
    t.integer "spellcharges_5", limit: 2, default: 0, null: false
    t.float "spellppmRate_5", default: 0.0, null: false
    t.integer "spellcooldown_5", default: -1, null: false
    t.integer "spellcategory_5", limit: 2, default: 0, null: false, unsigned: true
    t.integer "spellcategorycooldown_5", default: -1, null: false
    t.integer "bonding", limit: 1, default: 0, null: false, unsigned: true
    t.string "description", default: "", null: false
    t.integer "PageText", default: 0, null: false, unsigned: true
    t.integer "LanguageID", limit: 1, default: 0, null: false, unsigned: true
    t.integer "PageMaterial", limit: 1, default: 0, null: false, unsigned: true
    t.integer "startquest", default: 0, null: false, unsigned: true
    t.integer "lockid", default: 0, null: false, unsigned: true
    t.integer "Material", limit: 1, default: 0, null: false
    t.integer "sheath", limit: 1, default: 0, null: false, unsigned: true
    t.integer "RandomProperty", default: 0, null: false
    t.integer "RandomSuffix", default: 0, null: false, unsigned: true
    t.integer "block", default: 0, null: false, unsigned: true
    t.integer "itemset", default: 0, null: false, unsigned: true
    t.integer "MaxDurability", limit: 2, default: 0, null: false, unsigned: true
    t.integer "area", default: 0, null: false, unsigned: true
    t.integer "Map", limit: 2, default: 0, null: false
    t.integer "BagFamily", default: 0, null: false
    t.integer "TotemCategory", default: 0, null: false
    t.integer "socketColor_1", limit: 1, default: 0, null: false
    t.integer "socketContent_1", default: 0, null: false
    t.integer "socketColor_2", limit: 1, default: 0, null: false
    t.integer "socketContent_2", default: 0, null: false
    t.integer "socketColor_3", limit: 1, default: 0, null: false
    t.integer "socketContent_3", default: 0, null: false
    t.integer "socketBonus", default: 0, null: false
    t.integer "GemProperties", default: 0, null: false
    t.integer "RequiredDisenchantSkill", limit: 2, default: -1, null: false
    t.float "ArmorDamageModifier", default: 0.0, null: false
    t.integer "duration", default: 0, null: false, unsigned: true
    t.integer "ItemLimitCategory", limit: 2, default: 0, null: false
    t.integer "HolidayId", default: 0, null: false, unsigned: true
    t.string "ScriptName", limit: 64, default: "", null: false
    t.integer "DisenchantID", default: 0, null: false, unsigned: true
    t.integer "FoodType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "minMoneyLoot", default: 0, null: false, unsigned: true
    t.integer "maxMoneyLoot", default: 0, null: false, unsigned: true
    t.integer "flagsCustom", default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
    t.index ["class"], name: "items_index"
    t.index ["name"], name: "idx_name", length: 250
  end

  create_table "item_template_locale", primary_key: ["ID", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "Name"
    t.text "Description"
    t.integer "VerifiedBuild"
  end

  create_table "itembagfamily_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "itemdisplayinfo_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "ModelName_1", limit: 100
    t.string "ModelName_2", limit: 100
    t.string "ModelTexture_1", limit: 100
    t.string "ModelTexture_2", limit: 100
    t.string "InventoryIcon_1", limit: 100
    t.string "InventoryIcon_2", limit: 100
    t.integer "GeosetGroup_1", default: 0, null: false
    t.integer "GeosetGroup_2", default: 0, null: false
    t.integer "GeosetGroup_3", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "SpellVisualID", default: 0, null: false
    t.integer "GroupSoundIndex", default: 0, null: false
    t.integer "HelmetGeosetVis_1", default: 0, null: false
    t.integer "HelmetGeosetVis_2", default: 0, null: false
    t.string "Texture_1", limit: 100
    t.string "Texture_2", limit: 100
    t.string "Texture_3", limit: 100
    t.string "Texture_4", limit: 100
    t.string "Texture_5", limit: 100
    t.string "Texture_6", limit: 100
    t.string "Texture_7", limit: 100
    t.string "Texture_8", limit: 100
    t.integer "ItemVisual", default: 0, null: false
    t.integer "ParticleColorID", default: 0, null: false
  end

  create_table "itemextendedcost_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "HonorPoints", default: 0, null: false
    t.integer "ArenaPoints", default: 0, null: false
    t.integer "ArenaBracket", default: 0, null: false
    t.integer "ItemID_1", default: 0, null: false
    t.integer "ItemID_2", default: 0, null: false
    t.integer "ItemID_3", default: 0, null: false
    t.integer "ItemID_4", default: 0, null: false
    t.integer "ItemID_5", default: 0, null: false
    t.integer "ItemCount_1", default: 0, null: false
    t.integer "ItemCount_2", default: 0, null: false
    t.integer "ItemCount_3", default: 0, null: false
    t.integer "ItemCount_4", default: 0, null: false
    t.integer "ItemCount_5", default: 0, null: false
    t.integer "RequiredArenaRating", default: 0, null: false
    t.integer "ItemPurchaseGroup", default: 0, null: false
  end

  create_table "itemlimitcategory_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "Quantity", default: 0, null: false
    t.integer "Flags", default: 0, null: false
  end

  create_table "itemrandomproperties_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name", limit: 100
    t.integer "Enchantment_1", default: 0, null: false
    t.integer "Enchantment_2", default: 0, null: false
    t.integer "Enchantment_3", default: 0, null: false
    t.integer "Enchantment_4", default: 0, null: false
    t.integer "Enchantment_5", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "itemrandomsuffix_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "InternalName", limit: 100
    t.integer "Enchantment_1", default: 0, null: false
    t.integer "Enchantment_2", default: 0, null: false
    t.integer "Enchantment_3", default: 0, null: false
    t.integer "Enchantment_4", default: 0, null: false
    t.integer "Enchantment_5", default: 0, null: false
    t.integer "AllocationPct_1", default: 0, null: false
    t.integer "AllocationPct_2", default: 0, null: false
    t.integer "AllocationPct_3", default: 0, null: false
    t.integer "AllocationPct_4", default: 0, null: false
    t.integer "AllocationPct_5", default: 0, null: false
  end

  create_table "itemset_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "ItemID_1", default: 0, null: false
    t.integer "ItemID_2", default: 0, null: false
    t.integer "ItemID_3", default: 0, null: false
    t.integer "ItemID_4", default: 0, null: false
    t.integer "ItemID_5", default: 0, null: false
    t.integer "ItemID_6", default: 0, null: false
    t.integer "ItemID_7", default: 0, null: false
    t.integer "ItemID_8", default: 0, null: false
    t.integer "ItemID_9", default: 0, null: false
    t.integer "ItemID_10", default: 0, null: false
    t.integer "ItemID_11", default: 0, null: false
    t.integer "ItemID_12", default: 0, null: false
    t.integer "ItemID_13", default: 0, null: false
    t.integer "ItemID_14", default: 0, null: false
    t.integer "ItemID_15", default: 0, null: false
    t.integer "ItemID_16", default: 0, null: false
    t.integer "ItemID_17", default: 0, null: false
    t.integer "SetSpellID_1", default: 0, null: false
    t.integer "SetSpellID_2", default: 0, null: false
    t.integer "SetSpellID_3", default: 0, null: false
    t.integer "SetSpellID_4", default: 0, null: false
    t.integer "SetSpellID_5", default: 0, null: false
    t.integer "SetSpellID_6", default: 0, null: false
    t.integer "SetSpellID_7", default: 0, null: false
    t.integer "SetSpellID_8", default: 0, null: false
    t.integer "SetThreshold_1", default: 0, null: false
    t.integer "SetThreshold_2", default: 0, null: false
    t.integer "SetThreshold_3", default: 0, null: false
    t.integer "SetThreshold_4", default: 0, null: false
    t.integer "SetThreshold_5", default: 0, null: false
    t.integer "SetThreshold_6", default: 0, null: false
    t.integer "SetThreshold_7", default: 0, null: false
    t.integer "SetThreshold_8", default: 0, null: false
    t.integer "RequiredSkill", default: 0, null: false
    t.integer "RequiredSkillRank", default: 0, null: false
  end

  create_table "lfg_dungeon_rewards", primary_key: ["dungeonId", "maxLevel"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "dungeonId", default: 0, null: false, comment: "Dungeon entry from dbc", unsigned: true
    t.integer "maxLevel", limit: 1, default: 0, null: false, comment: "Max level at which this reward is rewarded", unsigned: true
    t.integer "firstQuestId", default: 0, null: false, comment: "Quest id with rewards for first dungeon this day", unsigned: true
    t.integer "otherQuestId", default: 0, null: false, comment: "Quest id with rewards for Nth dungeon this day", unsigned: true
  end

  create_table "lfg_dungeon_template", primary_key: "dungeonId", id: { type: :integer, default: 0, comment: "Unique id from LFGDungeons.dbc", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.float "orientation", default: 0.0, null: false
    t.integer "VerifiedBuild"
  end

  create_table "lfgdungeons_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "Name_Lang_enUS"
    t.text "Name_Lang_enGB"
    t.text "Name_Lang_koKR"
    t.text "Name_Lang_frFR"
    t.text "Name_Lang_deDE"
    t.text "Name_Lang_enCN"
    t.text "Name_Lang_zhCN"
    t.text "Name_Lang_enTW"
    t.text "Name_Lang_zhTW"
    t.text "Name_Lang_esES"
    t.text "Name_Lang_esMX"
    t.text "Name_Lang_ruRU"
    t.text "Name_Lang_ptPT"
    t.text "Name_Lang_ptBR"
    t.text "Name_Lang_itIT"
    t.text "Name_Lang_Unk"
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "MinLevel", default: 0, null: false
    t.integer "MaxLevel", default: 0, null: false
    t.integer "Target_Level", default: 0, null: false
    t.integer "Target_Level_Min", default: 0, null: false
    t.integer "Target_Level_Max", default: 0, null: false
    t.integer "MapID", default: 0, null: false
    t.integer "Difficulty", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "TypeID", default: 0, null: false
    t.integer "Faction", default: 0, null: false
    t.text "TextureFilename"
    t.integer "ExpansionLevel", default: 0, null: false
    t.integer "Order_Index", default: 0, null: false
    t.integer "Group_Id", default: 0, null: false
    t.text "Description_Lang_enUS"
    t.text "Description_Lang_enGB"
    t.text "Description_Lang_koKR"
    t.text "Description_Lang_frFR"
    t.text "Description_Lang_deDE"
    t.text "Description_Lang_enCN"
    t.text "Description_Lang_zhCN"
    t.text "Description_Lang_enTW"
    t.text "Description_Lang_zhTW"
    t.text "Description_Lang_esES"
    t.text "Description_Lang_esMX"
    t.text "Description_Lang_ruRU"
    t.text "Description_Lang_ptPT"
    t.text "Description_Lang_ptBR"
    t.text "Description_Lang_itIT"
    t.text "Description_Lang_Unk"
    t.integer "Description_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "light_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ContinentID", default: 0, null: false
    t.float "X", default: 0.0, null: false
    t.float "Y", default: 0.0, null: false
    t.float "Z", default: 0.0, null: false
    t.float "FalloffStart", default: 0.0, null: false
    t.float "FalloffEnd", default: 0.0, null: false
    t.integer "LightParamsID_1", default: 0, null: false
    t.integer "LightParamsID_2", default: 0, null: false
    t.integer "LightParamsID_3", default: 0, null: false
    t.integer "LightParamsID_4", default: 0, null: false
    t.integer "LightParamsID_5", default: 0, null: false
    t.integer "LightParamsID_6", default: 0, null: false
    t.integer "LightParamsID_7", default: 0, null: false
    t.integer "LightParamsID_8", default: 0, null: false
  end

  create_table "linked_respawn", primary_key: ["guid", "linkType"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Creature Respawn Link System", force: :cascade do |t|
    t.integer "guid", null: false, comment: "dependent creature", unsigned: true
    t.integer "linkedGuid", null: false, comment: "master creature", unsigned: true
    t.integer "linkType", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "liquidtype_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name", limit: 100
    t.integer "Flags", default: 0, null: false
    t.integer "Type", default: 0, null: false
    t.integer "SoundID", default: 0, null: false
    t.integer "SpellID", default: 0, null: false
    t.float "MaxDarkenDepth", default: 0.0, null: false
    t.float "FogDarkenintensity", default: 0.0, null: false
    t.float "AmbDarkenintensity", default: 0.0, null: false
    t.float "DirDarkenintensity", default: 0.0, null: false
    t.integer "LightID", default: 0, null: false
    t.float "ParticleScale", default: 0.0, null: false
    t.integer "ParticleMovement", default: 0, null: false
    t.integer "ParticleTexSlots", default: 0, null: false
    t.integer "MaterialID", default: 0, null: false
    t.string "Texture_1", limit: 100
    t.string "Texture_2", limit: 100
    t.string "Texture_3", limit: 100
    t.string "Texture_4", limit: 100
    t.string "Texture_5", limit: 100
    t.string "Texture_6", limit: 100
    t.integer "Color_1", default: 0, null: false
    t.integer "Color_2", default: 0, null: false
    t.float "Float_1", default: 0.0, null: false
    t.float "Float_2", default: 0.0, null: false
    t.float "Float_3", default: 0.0, null: false
    t.float "Float_4", default: 0.0, null: false
    t.float "Float_5", default: 0.0, null: false
    t.float "Float_6", default: 0.0, null: false
    t.float "Float_7", default: 0.0, null: false
    t.float "Float_8", default: 0.0, null: false
    t.float "Float_9", default: 0.0, null: false
    t.float "Float_10", default: 0.0, null: false
    t.float "Float_11", default: 0.0, null: false
    t.float "Float_12", default: 0.0, null: false
    t.float "Float_13", default: 0.0, null: false
    t.float "Float_14", default: 0.0, null: false
    t.float "Float_15", default: 0.0, null: false
    t.float "Float_16", default: 0.0, null: false
    t.float "Float_17", default: 0.0, null: false
    t.float "Float_18", default: 0.0, null: false
    t.integer "Int_1", default: 0, null: false
    t.integer "Int_2", default: 0, null: false
    t.integer "Int_3", default: 0, null: false
    t.integer "Int_4", default: 0, null: false
  end

  create_table "lock_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Type_1", default: 0, null: false
    t.integer "Type_2", default: 0, null: false
    t.integer "Type_3", default: 0, null: false
    t.integer "Type_4", default: 0, null: false
    t.integer "Type_5", default: 0, null: false
    t.integer "Type_6", default: 0, null: false
    t.integer "Type_7", default: 0, null: false
    t.integer "Type_8", default: 0, null: false
    t.integer "Index_1", default: 0, null: false
    t.integer "Index_2", default: 0, null: false
    t.integer "Index_3", default: 0, null: false
    t.integer "Index_4", default: 0, null: false
    t.integer "Index_5", default: 0, null: false
    t.integer "Index_6", default: 0, null: false
    t.integer "Index_7", default: 0, null: false
    t.integer "Index_8", default: 0, null: false
    t.integer "Skill_1", default: 0, null: false
    t.integer "Skill_2", default: 0, null: false
    t.integer "Skill_3", default: 0, null: false
    t.integer "Skill_4", default: 0, null: false
    t.integer "Skill_5", default: 0, null: false
    t.integer "Skill_6", default: 0, null: false
    t.integer "Skill_7", default: 0, null: false
    t.integer "Skill_8", default: 0, null: false
    t.integer "Action_1", default: 0, null: false
    t.integer "Action_2", default: 0, null: false
    t.integer "Action_3", default: 0, null: false
    t.integer "Action_4", default: 0, null: false
    t.integer "Action_5", default: 0, null: false
    t.integer "Action_6", default: 0, null: false
    t.integer "Action_7", default: 0, null: false
    t.integer "Action_8", default: 0, null: false
  end

  create_table "mail_level_reward", primary_key: ["level", "raceMask"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Mail System", force: :cascade do |t|
    t.integer "level", limit: 1, default: 0, null: false, unsigned: true
    t.integer "raceMask", default: 0, null: false, unsigned: true
    t.integer "mailTemplateId", default: 0, null: false, unsigned: true
    t.integer "senderEntry", default: 0, null: false, unsigned: true
  end

  create_table "mail_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "mailtemplate_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Subject_Lang_enUS", limit: 100
    t.string "Subject_Lang_enGB", limit: 100
    t.string "Subject_Lang_koKR", limit: 100
    t.string "Subject_Lang_frFR", limit: 100
    t.string "Subject_Lang_deDE", limit: 100
    t.string "Subject_Lang_enCN", limit: 100
    t.string "Subject_Lang_zhCN", limit: 100
    t.string "Subject_Lang_enTW", limit: 100
    t.string "Subject_Lang_zhTW", limit: 100
    t.string "Subject_Lang_esES", limit: 100
    t.string "Subject_Lang_esMX", limit: 100
    t.string "Subject_Lang_ruRU", limit: 100
    t.string "Subject_Lang_ptPT", limit: 100
    t.string "Subject_Lang_ptBR", limit: 100
    t.string "Subject_Lang_itIT", limit: 100
    t.string "Subject_Lang_Unk", limit: 100
    t.integer "Subject_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Body_Lang_enUS", limit: 500
    t.string "Body_Lang_enGB", limit: 500
    t.string "Body_Lang_koKR", limit: 500
    t.string "Body_Lang_frFR", limit: 500
    t.string "Body_Lang_deDE", limit: 500
    t.string "Body_Lang_enCN", limit: 500
    t.string "Body_Lang_zhCN", limit: 500
    t.string "Body_Lang_enTW", limit: 500
    t.string "Body_Lang_zhTW", limit: 500
    t.string "Body_Lang_esES", limit: 500
    t.string "Body_Lang_esMX", limit: 500
    t.string "Body_Lang_ruRU", limit: 500
    t.string "Body_Lang_ptPT", limit: 500
    t.string "Body_Lang_ptBR", limit: 500
    t.string "Body_Lang_itIT", limit: 500
    t.string "Body_Lang_Unk", limit: 100
    t.integer "Body_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "map_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Directory", limit: 100
    t.integer "InstanceType", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "PVP", default: 0, null: false
    t.string "MapName_Lang_enUS", limit: 100
    t.string "MapName_Lang_enGB", limit: 100
    t.string "MapName_Lang_koKR", limit: 100
    t.string "MapName_Lang_frFR", limit: 100
    t.string "MapName_Lang_deDE", limit: 100
    t.string "MapName_Lang_enCN", limit: 100
    t.string "MapName_Lang_zhCN", limit: 100
    t.string "MapName_Lang_enTW", limit: 100
    t.string "MapName_Lang_zhTW", limit: 100
    t.string "MapName_Lang_esES", limit: 100
    t.string "MapName_Lang_esMX", limit: 100
    t.string "MapName_Lang_ruRU", limit: 100
    t.string "MapName_Lang_ptPT", limit: 100
    t.string "MapName_Lang_ptBR", limit: 100
    t.string "MapName_Lang_itIT", limit: 100
    t.string "MapName_Lang_Unk", limit: 100
    t.integer "MapName_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "AreaTableID", default: 0, null: false
    t.text "MapDescription0_Lang_enUS"
    t.text "MapDescription0_Lang_enGB"
    t.text "MapDescription0_Lang_koKR"
    t.text "MapDescription0_Lang_frFR"
    t.text "MapDescription0_Lang_deDE"
    t.text "MapDescription0_Lang_enCN"
    t.text "MapDescription0_Lang_zhCN"
    t.text "MapDescription0_Lang_enTW"
    t.text "MapDescription0_Lang_zhTW"
    t.text "MapDescription0_Lang_esES"
    t.text "MapDescription0_Lang_esMX"
    t.text "MapDescription0_Lang_ruRU"
    t.text "MapDescription0_Lang_ptPT"
    t.text "MapDescription0_Lang_ptBR"
    t.text "MapDescription0_Lang_itIT"
    t.string "MapDescription0_Lang_Unk", limit: 100
    t.integer "MapDescription0_Lang_Mask", default: 0, null: false, unsigned: true
    t.text "MapDescription1_Lang_enUS"
    t.text "MapDescription1_Lang_enGB"
    t.text "MapDescription1_Lang_koKR"
    t.text "MapDescription1_Lang_frFR"
    t.text "MapDescription1_Lang_deDE"
    t.text "MapDescription1_Lang_enCN"
    t.text "MapDescription1_Lang_zhCN"
    t.text "MapDescription1_Lang_enTW"
    t.text "MapDescription1_Lang_zhTW"
    t.text "MapDescription1_Lang_esES"
    t.text "MapDescription1_Lang_esMX"
    t.text "MapDescription1_Lang_ruRU"
    t.text "MapDescription1_Lang_ptPT"
    t.text "MapDescription1_Lang_ptBR"
    t.text "MapDescription1_Lang_itIT"
    t.string "MapDescription1_Lang_Unk", limit: 100
    t.integer "MapDescription1_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "LoadingScreenID", default: 0, null: false
    t.float "MinimapIconScale", default: 0.0, null: false
    t.integer "CorpseMapID", default: 0, null: false
    t.float "CorpseX", default: 0.0, null: false
    t.float "CorpseY", default: 0.0, null: false
    t.integer "TimeOfDayOverride", default: 0, null: false
    t.integer "ExpansionID", default: 0, null: false
    t.integer "RaidOffset", default: 0, null: false
    t.integer "MaxPlayers", default: 0, null: false
  end

  create_table "mapdifficulty_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MapID", default: 0, null: false
    t.integer "Difficulty", default: 0, null: false
    t.string "Message_Lang_enUS", limit: 200
    t.string "Message_Lang_enGB", limit: 200
    t.string "Message_Lang_koKR", limit: 200
    t.string "Message_Lang_frFR", limit: 200
    t.string "Message_Lang_deDE", limit: 200
    t.string "Message_Lang_enCN", limit: 200
    t.string "Message_Lang_zhCN", limit: 200
    t.string "Message_Lang_enTW", limit: 200
    t.string "Message_Lang_zhTW", limit: 200
    t.string "Message_Lang_esES", limit: 200
    t.string "Message_Lang_esMX", limit: 200
    t.string "Message_Lang_ruRU", limit: 200
    t.string "Message_Lang_ptPT", limit: 200
    t.string "Message_Lang_ptBR", limit: 200
    t.string "Message_Lang_itIT", limit: 200
    t.string "Message_Lang_Unk", limit: 100
    t.integer "Message_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "RaidDuration", default: 0, null: false
    t.integer "MaxPlayers", default: 0, null: false
    t.string "Difficultystring", limit: 100
  end

  create_table "milling_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "module_string", primary_key: ["module", "id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "module", null: false, comment: "module dir name, eg mod-cfbg"
    t.integer "id", null: false, unsigned: true
    t.text "string", null: false
  end

  create_table "module_string_locale", primary_key: ["module", "id", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "module", null: false, comment: "Corresponds to an existing entry in module_string"
    t.integer "id", null: false, comment: "Corresponds to an existing entry in module_string", unsigned: true
    t.column "locale", "enum('koKR','frFR','deDE','zhCN','zhTW','esES','esMX','ruRU')", null: false
    t.text "string", null: false
  end

  create_table "movie_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Filename", limit: 100
    t.integer "Volume", default: 0, null: false
  end

  create_table "namesprofanity_dbc", primary_key: "ID", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "Pattern", size: :tiny, null: false
    t.integer "LanguagueID", limit: 1, null: false
  end

  create_table "namesreserved_dbc", primary_key: "ID", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "Pattern", size: :tiny, null: false
    t.integer "LanguagueID", limit: 1, null: false
  end

  create_table "npc_spellclick_spells", primary_key: ["npc_entry", "spell_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "npc_entry", null: false, comment: "reference to creature_template", unsigned: true
    t.integer "spell_id", null: false, comment: "spell which should be casted ", unsigned: true
    t.integer "cast_flags", limit: 1, null: false, comment: "first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit", unsigned: true
    t.integer "user_type", limit: 2, default: 0, null: false, comment: "relation with summoner: 0-no 1-friendly 2-raid 3-party player can click", unsigned: true
  end

  create_table "npc_text", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "text0_0", size: :long
    t.text "text0_1", size: :long
    t.integer "BroadcastTextID0", default: 0, null: false
    t.integer "lang0", limit: 1, default: 0, null: false, unsigned: true
    t.float "Probability0", default: 0.0, null: false
    t.integer "em0_0", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em0_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em0_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em0_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em0_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em0_5", limit: 2, default: 0, null: false, unsigned: true
    t.text "text1_0", size: :long
    t.text "text1_1", size: :long
    t.integer "BroadcastTextID1", default: 0, null: false
    t.integer "lang1", limit: 1, default: 0, null: false, unsigned: true
    t.float "Probability1", default: 0.0, null: false
    t.integer "em1_0", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em1_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em1_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em1_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em1_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em1_5", limit: 2, default: 0, null: false, unsigned: true
    t.text "text2_0", size: :long
    t.text "text2_1", size: :long
    t.integer "BroadcastTextID2", default: 0, null: false
    t.integer "lang2", limit: 1, default: 0, null: false, unsigned: true
    t.float "Probability2", default: 0.0, null: false
    t.integer "em2_0", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em2_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em2_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em2_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em2_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em2_5", limit: 2, default: 0, null: false, unsigned: true
    t.text "text3_0", size: :long
    t.text "text3_1", size: :long
    t.integer "BroadcastTextID3", default: 0, null: false
    t.integer "lang3", limit: 1, default: 0, null: false, unsigned: true
    t.float "Probability3", default: 0.0, null: false
    t.integer "em3_0", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em3_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em3_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em3_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em3_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em3_5", limit: 2, default: 0, null: false, unsigned: true
    t.text "text4_0", size: :long
    t.text "text4_1", size: :long
    t.integer "BroadcastTextID4", default: 0, null: false
    t.integer "lang4", limit: 1, default: 0, null: false, unsigned: true
    t.float "Probability4", default: 0.0, null: false
    t.integer "em4_0", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em4_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em4_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em4_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em4_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em4_5", limit: 2, default: 0, null: false, unsigned: true
    t.text "text5_0", size: :long
    t.text "text5_1", size: :long
    t.integer "BroadcastTextID5", default: 0, null: false
    t.integer "lang5", limit: 1, default: 0, null: false, unsigned: true
    t.float "Probability5", default: 0.0, null: false
    t.integer "em5_0", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em5_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em5_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em5_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em5_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em5_5", limit: 2, default: 0, null: false, unsigned: true
    t.text "text6_0", size: :long
    t.text "text6_1", size: :long
    t.integer "BroadcastTextID6", default: 0, null: false
    t.integer "lang6", limit: 1, default: 0, null: false, unsigned: true
    t.float "Probability6", default: 0.0, null: false
    t.integer "em6_0", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em6_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em6_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em6_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em6_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em6_5", limit: 2, default: 0, null: false, unsigned: true
    t.text "text7_0", size: :long
    t.text "text7_1", size: :long
    t.integer "BroadcastTextID7", default: 0, null: false
    t.integer "lang7", limit: 1, default: 0, null: false, unsigned: true
    t.float "Probability7", default: 0.0, null: false
    t.integer "em7_0", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em7_1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em7_2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em7_3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em7_4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "em7_5", limit: 2, default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
  end

  create_table "npc_text_locale", primary_key: ["ID", "Locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "Locale", limit: 4, null: false
    t.text "Text0_0", size: :long
    t.text "Text0_1", size: :long
    t.text "Text1_0", size: :long
    t.text "Text1_1", size: :long
    t.text "Text2_0", size: :long
    t.text "Text2_1", size: :long
    t.text "Text3_0", size: :long
    t.text "Text3_1", size: :long
    t.text "Text4_0", size: :long
    t.text "Text4_1", size: :long
    t.text "Text5_0", size: :long
    t.text "Text5_1", size: :long
    t.text "Text6_0", size: :long
    t.text "Text6_1", size: :long
    t.text "Text7_0", size: :long
    t.text "Text7_1", size: :long
  end

  create_table "npc_trainer", primary_key: ["ID", "SpellID"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.integer "SpellID", default: 0, null: false
    t.integer "MoneyCost", default: 0, null: false, unsigned: true
    t.integer "ReqSkillLine", limit: 2, default: 0, null: false, unsigned: true
    t.integer "ReqSkillRank", limit: 2, default: 0, null: false, unsigned: true
    t.integer "ReqLevel", limit: 1, default: 0, null: false, unsigned: true
    t.integer "ReqSpell", default: 0, null: false, unsigned: true
  end

  create_table "npc_vendor", primary_key: ["entry", "item", "ExtendedCost"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Npc System", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, unsigned: true
    t.integer "slot", limit: 2, default: 0, null: false
    t.integer "item", default: 0, null: false
    t.integer "maxcount", limit: 1, default: 0, null: false, unsigned: true
    t.integer "incrtime", default: 0, null: false, unsigned: true
    t.integer "ExtendedCost", default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
    t.index ["slot"], name: "slot"
  end

  create_table "outdoorpvp_template", primary_key: "TypeId", id: { type: :integer, limit: 1, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "OutdoorPvP Templates", force: :cascade do |t|
    t.string "ScriptName", limit: 64, default: "", null: false
    t.text "comment"
  end

  create_table "overridespelldata_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Spells_1", default: 0, null: false
    t.integer "Spells_2", default: 0, null: false
    t.integer "Spells_3", default: 0, null: false
    t.integer "Spells_4", default: 0, null: false
    t.integer "Spells_5", default: 0, null: false
    t.integer "Spells_6", default: 0, null: false
    t.integer "Spells_7", default: 0, null: false
    t.integer "Spells_8", default: 0, null: false
    t.integer "Spells_9", default: 0, null: false
    t.integer "Spells_10", default: 0, null: false
    t.integer "Flags", default: 0, null: false
  end

  create_table "page_text", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Item System", force: :cascade do |t|
    t.text "Text", size: :long, null: false
    t.integer "NextPageID", default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
  end

  create_table "page_text_locale", primary_key: ["ID", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "Text"
    t.integer "VerifiedBuild"
  end

  create_table "pet_levelstats", primary_key: ["creature_entry", "level"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Stores pet levels stats.", options: "ENGINE=InnoDB PACK_KEYS=0", force: :cascade do |t|
    t.integer "creature_entry", null: false, unsigned: true
    t.integer "level", limit: 1, null: false, unsigned: true
    t.integer "hp", default: 0, null: false, unsigned: true
    t.integer "mana", default: 0, null: false, unsigned: true
    t.integer "armor", default: 0, null: false, unsigned: true
    t.integer "str", default: 0, null: false, unsigned: true
    t.integer "agi", default: 0, null: false, unsigned: true
    t.integer "sta", default: 0, null: false, unsigned: true
    t.integer "inte", default: 0, null: false, unsigned: true
    t.integer "spi", default: 0, null: false, unsigned: true
    t.integer "min_dmg", default: 0, null: false, unsigned: true
    t.integer "max_dmg", default: 0, null: false, unsigned: true
  end

  create_table "pet_name_generation", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "word", size: :tiny, null: false
    t.integer "entry", default: 0, null: false, unsigned: true
    t.integer "half", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "pet_name_generation_locale", primary_key: ["ID", "Locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", null: false, unsigned: true
    t.string "Locale", limit: 4, null: false
    t.text "Word", size: :tiny, null: false
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Half", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "pickpocketing_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "player_class_stats", primary_key: ["Class", "Level"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Stores levels stats.", options: "ENGINE=InnoDB PACK_KEYS=0", force: :cascade do |t|
    t.integer "Class", limit: 1, null: false, unsigned: true
    t.integer "Level", limit: 1, null: false, unsigned: true
    t.integer "BaseHP", default: 1, null: false, unsigned: true
    t.integer "BaseMana", default: 1, null: false, unsigned: true
    t.integer "Strength", default: 0, null: false, unsigned: true
    t.integer "Agility", default: 0, null: false, unsigned: true
    t.integer "Stamina", default: 0, null: false, unsigned: true
    t.integer "Intellect", default: 0, null: false, unsigned: true
    t.integer "Spirit", default: 0, null: false, unsigned: true
  end

  create_table "player_classlevelstats", primary_key: ["class", "level"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Stores levels stats.", options: "ENGINE=InnoDB PACK_KEYS=0", force: :cascade do |t|
    t.integer "class", limit: 1, null: false, unsigned: true
    t.integer "level", limit: 1, null: false, unsigned: true
    t.integer "basehp", default: 1, null: false, unsigned: true
    t.integer "basemana", default: 1, null: false, unsigned: true
  end

  create_table "player_factionchange_achievement", primary_key: ["alliance_id", "horde_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "alliance_id", null: false, unsigned: true
    t.integer "horde_id", null: false, unsigned: true
  end

  create_table "player_factionchange_items", primary_key: ["alliance_id", "horde_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "alliance_id", null: false, unsigned: true
    t.text "alliance_comment", null: false
    t.integer "horde_id", null: false, unsigned: true
    t.text "horde_comment", null: false
  end

  create_table "player_factionchange_quests", primary_key: ["alliance_id", "horde_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "alliance_id", null: false, unsigned: true
    t.integer "horde_id", null: false, unsigned: true
    t.index ["alliance_id"], name: "alliance_uniq", unique: true
    t.index ["horde_id"], name: "horde_uniq", unique: true
  end

  create_table "player_factionchange_reputations", primary_key: ["alliance_id", "horde_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "alliance_id", null: false, unsigned: true
    t.integer "horde_id", null: false, unsigned: true
  end

  create_table "player_factionchange_spells", primary_key: ["alliance_id", "horde_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "alliance_id", null: false, unsigned: true
    t.text "alliance_comment", null: false
    t.integer "horde_id", null: false, unsigned: true
    t.text "horde_comment", null: false
  end

  create_table "player_factionchange_titles", primary_key: ["alliance_id", "horde_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "alliance_id", null: false
    t.text "alliance_comment"
    t.integer "horde_id", null: false
    t.text "horde_comment"
  end

  create_table "player_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.text "Comment"
  end

  create_table "player_race_stats", primary_key: "Race", id: { type: :integer, limit: 1, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Stores race stats.", options: "ENGINE=InnoDB PACK_KEYS=0", force: :cascade do |t|
    t.integer "Strength", default: 0, null: false
    t.integer "Agility", default: 0, null: false
    t.integer "Stamina", default: 0, null: false
    t.integer "Intellect", default: 0, null: false
    t.integer "Spirit", default: 0, null: false
  end

  create_table "player_xp_for_level", primary_key: "Level", id: { type: :integer, limit: 1, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Experience", null: false, unsigned: true
  end

  create_table "playercreateinfo", primary_key: ["race", "class"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "race", limit: 1, default: 0, null: false, unsigned: true
    t.integer "class", limit: 1, default: 0, null: false, unsigned: true
    t.integer "map", limit: 2, default: 0, null: false, unsigned: true
    t.integer "zone", default: 0, null: false, unsigned: true
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.float "orientation", default: 0.0, null: false
  end

  create_table "playercreateinfo_action", primary_key: ["race", "class", "button"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "race", limit: 1, default: 0, null: false, unsigned: true
    t.integer "class", limit: 1, default: 0, null: false, unsigned: true
    t.integer "button", limit: 2, default: 0, null: false, unsigned: true
    t.integer "action", default: 0, null: false, unsigned: true
    t.integer "type", limit: 2, default: 0, null: false, unsigned: true
    t.index ["race", "class"], name: "playercreateinfo_race_class_index"
  end

  create_table "playercreateinfo_cast_spell", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "raceMask", default: 0, null: false, unsigned: true
    t.integer "classMask", default: 0, null: false, unsigned: true
    t.integer "spell", default: 0, null: false, unsigned: true
    t.string "note"
  end

  create_table "playercreateinfo_item", primary_key: ["race", "class", "itemid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "race", limit: 1, default: 0, null: false, unsigned: true
    t.integer "class", limit: 1, default: 0, null: false, unsigned: true
    t.integer "itemid", default: 0, null: false, unsigned: true
    t.integer "amount", default: 1, null: false
    t.string "Note"
    t.index ["race", "class"], name: "playercreateinfo_race_class_index"
  end

  create_table "playercreateinfo_skills", primary_key: ["raceMask", "classMask", "skill"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "raceMask", null: false, unsigned: true
    t.integer "classMask", null: false, unsigned: true
    t.integer "skill", limit: 2, null: false, unsigned: true
    t.integer "rank", limit: 2, default: 0, null: false, unsigned: true
    t.string "comment"
  end

  create_table "playercreateinfo_spell_custom", primary_key: ["racemask", "classmask", "Spell"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "racemask", default: 0, null: false, unsigned: true
    t.integer "classmask", default: 0, null: false, unsigned: true
    t.integer "Spell", default: 0, null: false, unsigned: true
    t.string "Note"
  end

  create_table "points_of_interest", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "PositionX", default: 0.0, null: false
    t.float "PositionY", default: 0.0, null: false
    t.integer "Icon", default: 0, null: false, unsigned: true
    t.integer "Flags", default: 0, null: false, unsigned: true
    t.integer "Importance", default: 0, null: false, unsigned: true
    t.text "Name", null: false
  end

  create_table "points_of_interest_locale", primary_key: ["ID", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "Name"
    t.integer "VerifiedBuild"
  end

  create_table "pool_creature", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "pool_entry", default: 0, null: false, unsigned: true
    t.float "chance", default: 0.0, null: false
    t.string "description"
    t.index ["guid"], name: "idx_guid"
    t.check_constraint "`chance` >= 0", name: "pool_creature_chk_1"
  end

  create_table "pool_gameobject", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "pool_entry", default: 0, null: false, unsigned: true
    t.float "chance", default: 0.0, null: false
    t.string "description"
    t.index ["guid"], name: "idx_guid"
    t.check_constraint "`chance` >= 0", name: "pool_gameobject_chk_1"
  end

  create_table "pool_pool", primary_key: "pool_id", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mother_pool", default: 0, null: false, unsigned: true
    t.float "chance", default: 0.0, null: false
    t.string "description"
  end

  create_table "pool_quest", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "pool_entry", default: 0, null: false, unsigned: true
    t.string "description"
    t.index ["entry"], name: "idx_guid"
  end

  create_table "pool_template", primary_key: "entry", id: { type: :integer, default: 0, comment: "Pool entry", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "max_limit", default: 0, null: false, comment: "Max number of objects (0) is no limit", unsigned: true
    t.string "description"
  end

  create_table "powerdisplay_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ActualType", default: 0, null: false
    t.string "GlobalstringBaseTag", limit: 100
    t.integer "Red", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Green", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Blue", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "prospecting_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "pvpdifficulty_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MapID", default: 0, null: false
    t.integer "RangeIndex", default: 0, null: false
    t.integer "MinLevel", default: 0, null: false
    t.integer "MaxLevel", default: 0, null: false
    t.integer "Difficulty", default: 0, null: false
  end

  create_table "quest_details", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Emote1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "Emote2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "Emote3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "Emote4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "EmoteDelay1", default: 0, null: false, unsigned: true
    t.integer "EmoteDelay2", default: 0, null: false, unsigned: true
    t.integer "EmoteDelay3", default: 0, null: false, unsigned: true
    t.integer "EmoteDelay4", default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
  end

  create_table "quest_greeting", primary_key: ["ID", "type"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "GreetEmoteType", limit: 2, default: 0, null: false, unsigned: true
    t.integer "GreetEmoteDelay", default: 0, null: false, unsigned: true
    t.text "Greeting"
    t.integer "VerifiedBuild"
  end

  create_table "quest_greeting_locale", primary_key: ["ID", "type", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "Greeting"
    t.integer "VerifiedBuild"
  end

  create_table "quest_mail_sender", primary_key: "QuestId", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "RewardMailSenderEntry", default: 0, null: false, unsigned: true
  end

  create_table "quest_money_reward", primary_key: "Level", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Money0", default: 0, null: false
    t.integer "Money1", default: 0, null: false
    t.integer "Money2", default: 0, null: false
    t.integer "Money3", default: 0, null: false
    t.integer "Money4", default: 0, null: false
    t.integer "Money5", default: 0, null: false
    t.integer "Money6", default: 0, null: false
    t.integer "Money7", default: 0, null: false
    t.integer "Money8", default: 0, null: false
    t.integer "Money9", default: 0, null: false
  end

  create_table "quest_offer_reward", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Emote1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "Emote2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "Emote3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "Emote4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "EmoteDelay1", default: 0, null: false, unsigned: true
    t.integer "EmoteDelay2", default: 0, null: false, unsigned: true
    t.integer "EmoteDelay3", default: 0, null: false, unsigned: true
    t.integer "EmoteDelay4", default: 0, null: false, unsigned: true
    t.text "RewardText"
    t.integer "VerifiedBuild"
  end

  create_table "quest_offer_reward_locale", primary_key: ["ID", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "RewardText"
    t.integer "VerifiedBuild"
  end

  create_table "quest_poi", primary_key: ["QuestID", "id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "QuestID", default: 0, null: false, unsigned: true
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "ObjectiveIndex", default: 0, null: false
    t.integer "MapID", default: 0, null: false, unsigned: true
    t.integer "WorldMapAreaId", default: 0, null: false, unsigned: true
    t.integer "Floor", default: 0, null: false, unsigned: true
    t.integer "Priority", default: 0, null: false, unsigned: true
    t.integer "Flags", default: 0, null: false, unsigned: true
    t.integer "VerifiedBuild"
    t.index ["QuestID", "id"], name: "idx"
  end

  create_table "quest_poi_points", primary_key: ["QuestID", "Idx1", "Idx2"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "QuestID", default: 0, null: false, unsigned: true
    t.integer "Idx1", default: 0, null: false, unsigned: true
    t.integer "Idx2", default: 0, null: false, unsigned: true
    t.integer "X", default: 0, null: false
    t.integer "Y", default: 0, null: false
    t.integer "VerifiedBuild"
    t.index ["QuestID", "Idx1"], name: "questId_id"
  end

  create_table "quest_request_items", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "EmoteOnComplete", limit: 2, default: 0, null: false, unsigned: true
    t.integer "EmoteOnIncomplete", limit: 2, default: 0, null: false, unsigned: true
    t.text "CompletionText"
    t.integer "VerifiedBuild"
  end

  create_table "quest_request_items_locale", primary_key: ["ID", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "CompletionText"
    t.integer "VerifiedBuild"
  end

  create_table "quest_template", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Quest System", force: :cascade do |t|
    t.integer "QuestType", limit: 1, default: 2, null: false, unsigned: true
    t.integer "QuestLevel", limit: 2, default: 1, null: false
    t.integer "MinLevel", limit: 1, default: 0, null: false, unsigned: true
    t.integer "QuestSortID", limit: 2, default: 0, null: false
    t.integer "QuestInfoID", limit: 2, default: 0, null: false, unsigned: true
    t.integer "SuggestedGroupNum", limit: 1, default: 0, null: false, unsigned: true
    t.integer "RequiredFactionId1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredFactionId2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredFactionValue1", default: 0, null: false
    t.integer "RequiredFactionValue2", default: 0, null: false
    t.integer "RewardNextQuest", default: 0, null: false, unsigned: true
    t.integer "RewardXPDifficulty", limit: 1, default: 0, null: false, unsigned: true
    t.integer "RewardMoney", default: 0, null: false
    t.integer "RewardMoneyDifficulty", default: 0, null: false, unsigned: true
    t.integer "RewardDisplaySpell", default: 0, null: false, unsigned: true
    t.integer "RewardSpell", default: 0, null: false
    t.integer "RewardHonor", default: 0, null: false
    t.float "RewardKillHonor", default: 0.0, null: false
    t.integer "StartItem", default: 0, null: false, unsigned: true
    t.integer "Flags", default: 0, null: false, unsigned: true
    t.integer "RequiredPlayerKills", limit: 1, default: 0, null: false, unsigned: true
    t.integer "RewardItem1", default: 0, null: false, unsigned: true
    t.integer "RewardAmount1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardItem2", default: 0, null: false, unsigned: true
    t.integer "RewardAmount2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardItem3", default: 0, null: false, unsigned: true
    t.integer "RewardAmount3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardItem4", default: 0, null: false, unsigned: true
    t.integer "RewardAmount4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "ItemDrop1", default: 0, null: false, unsigned: true
    t.integer "ItemDropQuantity1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "ItemDrop2", default: 0, null: false, unsigned: true
    t.integer "ItemDropQuantity2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "ItemDrop3", default: 0, null: false, unsigned: true
    t.integer "ItemDropQuantity3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "ItemDrop4", default: 0, null: false, unsigned: true
    t.integer "ItemDropQuantity4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemID1", default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemQuantity1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemID2", default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemQuantity2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemID3", default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemQuantity3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemID4", default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemQuantity4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemID5", default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemQuantity5", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemID6", default: 0, null: false, unsigned: true
    t.integer "RewardChoiceItemQuantity6", limit: 2, default: 0, null: false, unsigned: true
    t.integer "POIContinent", limit: 2, default: 0, null: false, unsigned: true
    t.float "POIx", default: 0.0, null: false
    t.float "POIy", default: 0.0, null: false
    t.integer "POIPriority", default: 0, null: false, unsigned: true
    t.integer "RewardTitle", limit: 1, default: 0, null: false, unsigned: true
    t.integer "RewardTalents", limit: 1, default: 0, null: false, unsigned: true
    t.integer "RewardArenaPoints", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RewardFactionID1", limit: 2, default: 0, null: false, comment: "faction id from Faction.dbc in this case", unsigned: true
    t.integer "RewardFactionValue1", default: 0, null: false
    t.integer "RewardFactionOverride1", default: 0, null: false
    t.integer "RewardFactionID2", limit: 2, default: 0, null: false, comment: "faction id from Faction.dbc in this case", unsigned: true
    t.integer "RewardFactionValue2", default: 0, null: false
    t.integer "RewardFactionOverride2", default: 0, null: false
    t.integer "RewardFactionID3", limit: 2, default: 0, null: false, comment: "faction id from Faction.dbc in this case", unsigned: true
    t.integer "RewardFactionValue3", default: 0, null: false
    t.integer "RewardFactionOverride3", default: 0, null: false
    t.integer "RewardFactionID4", limit: 2, default: 0, null: false, comment: "faction id from Faction.dbc in this case", unsigned: true
    t.integer "RewardFactionValue4", default: 0, null: false
    t.integer "RewardFactionOverride4", default: 0, null: false
    t.integer "RewardFactionID5", limit: 2, default: 0, null: false, comment: "faction id from Faction.dbc in this case", unsigned: true
    t.integer "RewardFactionValue5", default: 0, null: false
    t.integer "RewardFactionOverride5", default: 0, null: false
    t.integer "TimeAllowed", default: 0, null: false, unsigned: true
    t.integer "AllowableRaces", default: 0, null: false, unsigned: true
    t.text "LogTitle"
    t.text "LogDescription"
    t.text "QuestDescription"
    t.text "AreaDescription"
    t.text "QuestCompletionLog"
    t.integer "RequiredNpcOrGo1", default: 0, null: false
    t.integer "RequiredNpcOrGo2", default: 0, null: false
    t.integer "RequiredNpcOrGo3", default: 0, null: false
    t.integer "RequiredNpcOrGo4", default: 0, null: false
    t.integer "RequiredNpcOrGoCount1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredNpcOrGoCount2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredNpcOrGoCount3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredNpcOrGoCount4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredItemId1", default: 0, null: false, unsigned: true
    t.integer "RequiredItemId2", default: 0, null: false, unsigned: true
    t.integer "RequiredItemId3", default: 0, null: false, unsigned: true
    t.integer "RequiredItemId4", default: 0, null: false, unsigned: true
    t.integer "RequiredItemId5", default: 0, null: false, unsigned: true
    t.integer "RequiredItemId6", default: 0, null: false, unsigned: true
    t.integer "RequiredItemCount1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredItemCount2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredItemCount3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredItemCount4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredItemCount5", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredItemCount6", limit: 2, default: 0, null: false, unsigned: true
    t.integer "Unknown0", limit: 1, default: 0, null: false, unsigned: true
    t.text "ObjectiveText1"
    t.text "ObjectiveText2"
    t.text "ObjectiveText3"
    t.text "ObjectiveText4"
    t.integer "VerifiedBuild"
  end

  create_table "quest_template_addon", primary_key: "ID", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MaxLevel", limit: 1, default: 0, null: false, unsigned: true
    t.integer "AllowableClasses", default: 0, null: false, unsigned: true
    t.integer "SourceSpellID", default: 0, null: false, unsigned: true
    t.integer "PrevQuestID", default: 0, null: false
    t.integer "NextQuestID", default: 0, null: false, unsigned: true
    t.integer "ExclusiveGroup", default: 0, null: false
    t.integer "RewardMailTemplateID", default: 0, null: false, unsigned: true
    t.integer "RewardMailDelay", default: 0, null: false, unsigned: true
    t.integer "RequiredSkillID", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredSkillPoints", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredMinRepFaction", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredMaxRepFaction", limit: 2, default: 0, null: false, unsigned: true
    t.integer "RequiredMinRepValue", default: 0, null: false
    t.integer "RequiredMaxRepValue", default: 0, null: false
    t.integer "ProvidedItemCount", limit: 1, default: 0, null: false, unsigned: true
    t.integer "SpecialFlags", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "quest_template_locale", primary_key: ["ID", "locale"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, unsigned: true
    t.string "locale", limit: 4, null: false
    t.text "Title"
    t.text "Details"
    t.text "Objectives"
    t.text "EndText"
    t.text "CompletedText"
    t.text "ObjectiveText1"
    t.text "ObjectiveText2"
    t.text "ObjectiveText3"
    t.text "ObjectiveText4"
    t.integer "VerifiedBuild"
  end

  create_table "questfactionreward_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Difficulty_1", default: 0, null: false
    t.integer "Difficulty_2", default: 0, null: false
    t.integer "Difficulty_3", default: 0, null: false
    t.integer "Difficulty_4", default: 0, null: false
    t.integer "Difficulty_5", default: 0, null: false
    t.integer "Difficulty_6", default: 0, null: false
    t.integer "Difficulty_7", default: 0, null: false
    t.integer "Difficulty_8", default: 0, null: false
    t.integer "Difficulty_9", default: 0, null: false
    t.integer "Difficulty_10", default: 0, null: false
  end

  create_table "questsort_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "SortName_Lang_enUS", limit: 100
    t.string "SortName_Lang_enGB", limit: 100
    t.string "SortName_Lang_koKR", limit: 100
    t.string "SortName_Lang_frFR", limit: 100
    t.string "SortName_Lang_deDE", limit: 100
    t.string "SortName_Lang_enCN", limit: 100
    t.string "SortName_Lang_zhCN", limit: 100
    t.string "SortName_Lang_enTW", limit: 100
    t.string "SortName_Lang_zhTW", limit: 100
    t.string "SortName_Lang_esES", limit: 100
    t.string "SortName_Lang_esMX", limit: 100
    t.string "SortName_Lang_ruRU", limit: 100
    t.string "SortName_Lang_ptPT", limit: 100
    t.string "SortName_Lang_ptBR", limit: 100
    t.string "SortName_Lang_itIT", limit: 100
    t.string "SortName_Lang_Unk", limit: 100
    t.integer "SortName_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "questxp_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Difficulty_1", default: 0, null: false
    t.integer "Difficulty_2", default: 0, null: false
    t.integer "Difficulty_3", default: 0, null: false
    t.integer "Difficulty_4", default: 0, null: false
    t.integer "Difficulty_5", default: 0, null: false
    t.integer "Difficulty_6", default: 0, null: false
    t.integer "Difficulty_7", default: 0, null: false
    t.integer "Difficulty_8", default: 0, null: false
    t.integer "Difficulty_9", default: 0, null: false
    t.integer "Difficulty_10", default: 0, null: false
  end

  create_table "randproppoints_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Epic_1", default: 0, null: false
    t.integer "Epic_2", default: 0, null: false
    t.integer "Epic_3", default: 0, null: false
    t.integer "Epic_4", default: 0, null: false
    t.integer "Epic_5", default: 0, null: false
    t.integer "Superior_1", default: 0, null: false
    t.integer "Superior_2", default: 0, null: false
    t.integer "Superior_3", default: 0, null: false
    t.integer "Superior_4", default: 0, null: false
    t.integer "Superior_5", default: 0, null: false
    t.integer "Good_1", default: 0, null: false
    t.integer "Good_2", default: 0, null: false
    t.integer "Good_3", default: 0, null: false
    t.integer "Good_4", default: 0, null: false
    t.integer "Good_5", default: 0, null: false
  end

  create_table "reference_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "reputation_reward_rate", primary_key: "faction", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "quest_rate", default: 1.0, null: false
    t.float "quest_daily_rate", default: 1.0, null: false
    t.float "quest_weekly_rate", default: 1.0, null: false
    t.float "quest_monthly_rate", default: 1.0, null: false
    t.float "quest_repeatable_rate", default: 1.0, null: false
    t.float "creature_rate", default: 1.0, null: false
    t.float "spell_rate", default: 1.0, null: false
  end

  create_table "reputation_spillover_template", primary_key: "faction", id: { type: :integer, limit: 2, default: 0, comment: "faction entry", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Reputation spillover reputation gain", force: :cascade do |t|
    t.integer "faction1", limit: 2, default: 0, null: false, comment: "faction to give spillover for", unsigned: true
    t.float "rate_1", default: 0.0, null: false, comment: "the given rep points * rate"
    t.integer "rank_1", limit: 1, default: 0, null: false, comment: "max rank,above this will not give any spillover", unsigned: true
    t.integer "faction2", limit: 2, default: 0, null: false, unsigned: true
    t.float "rate_2", default: 0.0, null: false
    t.integer "rank_2", limit: 1, default: 0, null: false, unsigned: true
    t.integer "faction3", limit: 2, default: 0, null: false, unsigned: true
    t.float "rate_3", default: 0.0, null: false
    t.integer "rank_3", limit: 1, default: 0, null: false, unsigned: true
    t.integer "faction4", limit: 2, default: 0, null: false, unsigned: true
    t.float "rate_4", default: 0.0, null: false
    t.integer "rank_4", limit: 1, default: 0, null: false, unsigned: true
    t.integer "faction5", limit: 2, default: 0, null: false, unsigned: true
    t.float "rate_5", default: 0.0, null: false
    t.integer "rank_5", limit: 1, default: 0, null: false, unsigned: true
    t.integer "faction6", limit: 2, default: 0, null: false, unsigned: true
    t.float "rate_6", default: 0.0, null: false
    t.integer "rank_6", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "scalingstatdistribution_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "StatID_1", default: 0, null: false
    t.integer "StatID_2", default: 0, null: false
    t.integer "StatID_3", default: 0, null: false
    t.integer "StatID_4", default: 0, null: false
    t.integer "StatID_5", default: 0, null: false
    t.integer "StatID_6", default: 0, null: false
    t.integer "StatID_7", default: 0, null: false
    t.integer "StatID_8", default: 0, null: false
    t.integer "StatID_9", default: 0, null: false
    t.integer "StatID_10", default: 0, null: false
    t.integer "Bonus_1", default: 0, null: false
    t.integer "Bonus_2", default: 0, null: false
    t.integer "Bonus_3", default: 0, null: false
    t.integer "Bonus_4", default: 0, null: false
    t.integer "Bonus_5", default: 0, null: false
    t.integer "Bonus_6", default: 0, null: false
    t.integer "Bonus_7", default: 0, null: false
    t.integer "Bonus_8", default: 0, null: false
    t.integer "Bonus_9", default: 0, null: false
    t.integer "Bonus_10", default: 0, null: false
    t.integer "Maxlevel", default: 0, null: false
  end

  create_table "scalingstatvalues_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Charlevel", default: 0, null: false
    t.integer "ShoulderBudget", default: 0, null: false
    t.integer "TrinketBudget", default: 0, null: false
    t.integer "WeaponBudget1H", default: 0, null: false
    t.integer "RangedBudget", default: 0, null: false
    t.integer "ClothShoulderArmor", default: 0, null: false
    t.integer "LeatherShoulderArmor", default: 0, null: false
    t.integer "MailShoulderArmor", default: 0, null: false
    t.integer "PlateShoulderArmor", default: 0, null: false
    t.integer "WeaponDPS1H", default: 0, null: false
    t.integer "WeaponDPS2H", default: 0, null: false
    t.integer "SpellcasterDPS1H", default: 0, null: false
    t.integer "SpellcasterDPS2H", default: 0, null: false
    t.integer "RangedDPS", default: 0, null: false
    t.integer "WandDPS", default: 0, null: false
    t.integer "SpellPower", default: 0, null: false
    t.integer "PrimaryBudget", default: 0, null: false
    t.integer "TertiaryBudget", default: 0, null: false
    t.integer "ClothCloakArmor", default: 0, null: false
    t.integer "ClothChestArmor", default: 0, null: false
    t.integer "LeatherChestArmor", default: 0, null: false
    t.integer "MailChestArmor", default: 0, null: false
    t.integer "PlateChestArmor", default: 0, null: false
  end

  create_table "script_waypoint", primary_key: ["entry", "pointid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Script Creature waypoints", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, comment: "creature_template entry", unsigned: true
    t.integer "pointid", default: 0, null: false, unsigned: true
    t.float "location_x", default: 0.0, null: false
    t.float "location_y", default: 0.0, null: false
    t.float "location_z", default: 0.0, null: false
    t.integer "waittime", default: 0, null: false, comment: "waittime in millisecs", unsigned: true
    t.text "point_comment"
  end

  create_table "skill_discovery_template", primary_key: ["spellId", "reqSpell"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Skill Discovery System", force: :cascade do |t|
    t.integer "spellId", default: 0, null: false, comment: "SpellId of the discoverable spell", unsigned: true
    t.integer "reqSpell", default: 0, null: false, comment: "spell requirement", unsigned: true
    t.integer "reqSkillValue", limit: 2, default: 0, null: false, comment: "skill points requirement", unsigned: true
    t.float "chance", default: 0.0, null: false, comment: "chance to discover"
  end

  create_table "skill_extra_item_template", primary_key: "spellId", id: { type: :integer, default: 0, comment: "SpellId of the item creation spell", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Skill Specialization System", force: :cascade do |t|
    t.integer "requiredSpecialization", default: 0, null: false, comment: "Specialization spell id", unsigned: true
    t.float "additionalCreateChance", default: 0.0, null: false, comment: "chance to create add"
    t.integer "additionalMaxNum", limit: 1, default: 0, null: false
  end

  create_table "skill_fishing_base_level", primary_key: "entry", id: { type: :integer, default: 0, comment: "Area identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Fishing system", force: :cascade do |t|
    t.integer "skill", limit: 2, default: 0, null: false, comment: "Base skill level requirement"
  end

  create_table "skill_perfect_item_template", primary_key: "spellId", id: { type: :integer, default: 0, comment: "SpellId of the item creation spell", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Crafting Perfection System", force: :cascade do |t|
    t.integer "requiredSpecialization", default: 0, null: false, comment: "Specialization spell id", unsigned: true
    t.float "perfectCreateChance", default: 0.0, null: false, comment: "chance to create the perfect item instead"
    t.integer "perfectItemType", default: 0, null: false, comment: "perfect item type to create instead", unsigned: true
  end

  create_table "skillline_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "CategoryID", default: 0, null: false
    t.integer "SkillCostsID", default: 0, null: false
    t.string "DisplayName_Lang_enUS", limit: 100
    t.string "DisplayName_Lang_enGB", limit: 100
    t.string "DisplayName_Lang_koKR", limit: 100
    t.string "DisplayName_Lang_frFR", limit: 100
    t.string "DisplayName_Lang_deDE", limit: 100
    t.string "DisplayName_Lang_enCN", limit: 100
    t.string "DisplayName_Lang_zhCN", limit: 100
    t.string "DisplayName_Lang_enTW", limit: 100
    t.string "DisplayName_Lang_zhTW", limit: 100
    t.string "DisplayName_Lang_esES", limit: 100
    t.string "DisplayName_Lang_esMX", limit: 100
    t.string "DisplayName_Lang_ruRU", limit: 100
    t.string "DisplayName_Lang_ptPT", limit: 100
    t.string "DisplayName_Lang_ptBR", limit: 100
    t.string "DisplayName_Lang_itIT", limit: 100
    t.string "DisplayName_Lang_Unk", limit: 100
    t.integer "DisplayName_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "Description_Lang_enUS", limit: 300
    t.string "Description_Lang_enGB", limit: 300
    t.string "Description_Lang_koKR", limit: 300
    t.string "Description_Lang_frFR", limit: 300
    t.string "Description_Lang_deDE", limit: 300
    t.string "Description_Lang_enCN", limit: 300
    t.string "Description_Lang_zhCN", limit: 300
    t.string "Description_Lang_enTW", limit: 300
    t.string "Description_Lang_zhTW", limit: 300
    t.string "Description_Lang_esES", limit: 300
    t.string "Description_Lang_esMX", limit: 300
    t.string "Description_Lang_ruRU", limit: 300
    t.string "Description_Lang_ptPT", limit: 300
    t.string "Description_Lang_ptBR", limit: 300
    t.string "Description_Lang_itIT", limit: 300
    t.string "Description_Lang_Unk", limit: 100
    t.integer "Description_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "SpellIconID", default: 0, null: false
    t.string "AlternateVerb_Lang_enUS", limit: 100
    t.string "AlternateVerb_Lang_enGB", limit: 100
    t.string "AlternateVerb_Lang_koKR", limit: 100
    t.string "AlternateVerb_Lang_frFR", limit: 100
    t.string "AlternateVerb_Lang_deDE", limit: 100
    t.string "AlternateVerb_Lang_enCN", limit: 100
    t.string "AlternateVerb_Lang_zhCN", limit: 100
    t.string "AlternateVerb_Lang_enTW", limit: 100
    t.string "AlternateVerb_Lang_zhTW", limit: 100
    t.string "AlternateVerb_Lang_esES", limit: 100
    t.string "AlternateVerb_Lang_esMX", limit: 100
    t.string "AlternateVerb_Lang_ruRU", limit: 100
    t.string "AlternateVerb_Lang_ptPT", limit: 100
    t.string "AlternateVerb_Lang_ptBR", limit: 100
    t.string "AlternateVerb_Lang_itIT", limit: 100
    t.string "AlternateVerb_Lang_Unk", limit: 100
    t.integer "AlternateVerb_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "CanLink", default: 0, null: false
  end

  create_table "skilllineability_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "SkillLine", default: 0, null: false
    t.integer "Spell", default: 0, null: false
    t.integer "RaceMask", default: 0, null: false
    t.integer "ClassMask", default: 0, null: false
    t.integer "ExcludeRace", default: 0, null: false
    t.integer "ExcludeClass", default: 0, null: false
    t.integer "MinSkillLineRank", default: 0, null: false
    t.integer "SupercededBySpell", default: 0, null: false
    t.integer "AcquireMethod", default: 0, null: false
    t.integer "TrivialSkillLineRankHigh", default: 0, null: false
    t.integer "TrivialSkillLineRankLow", default: 0, null: false
    t.integer "CharacterPoints_1", default: 0, null: false
    t.integer "CharacterPoints_2", default: 0, null: false
  end

  create_table "skillraceclassinfo_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "SkillID", default: 0, null: false
    t.integer "RaceMask", default: 0, null: false
    t.integer "ClassMask", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "MinLevel", default: 0, null: false
    t.integer "SkillTierID", default: 0, null: false
    t.integer "SkillCostIndex", default: 0, null: false
  end

  create_table "skilltiers_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Cost_1", default: 0, null: false
    t.integer "Cost_2", default: 0, null: false
    t.integer "Cost_3", default: 0, null: false
    t.integer "Cost_4", default: 0, null: false
    t.integer "Cost_5", default: 0, null: false
    t.integer "Cost_6", default: 0, null: false
    t.integer "Cost_7", default: 0, null: false
    t.integer "Cost_8", default: 0, null: false
    t.integer "Cost_9", default: 0, null: false
    t.integer "Cost_10", default: 0, null: false
    t.integer "Cost_11", default: 0, null: false
    t.integer "Cost_12", default: 0, null: false
    t.integer "Cost_13", default: 0, null: false
    t.integer "Cost_14", default: 0, null: false
    t.integer "Cost_15", default: 0, null: false
    t.integer "Cost_16", default: 0, null: false
    t.integer "Value_1", default: 0, null: false
    t.integer "Value_2", default: 0, null: false
    t.integer "Value_3", default: 0, null: false
    t.integer "Value_4", default: 0, null: false
    t.integer "Value_5", default: 0, null: false
    t.integer "Value_6", default: 0, null: false
    t.integer "Value_7", default: 0, null: false
    t.integer "Value_8", default: 0, null: false
    t.integer "Value_9", default: 0, null: false
    t.integer "Value_10", default: 0, null: false
    t.integer "Value_11", default: 0, null: false
    t.integer "Value_12", default: 0, null: false
    t.integer "Value_13", default: 0, null: false
    t.integer "Value_14", default: 0, null: false
    t.integer "Value_15", default: 0, null: false
    t.integer "Value_16", default: 0, null: false
  end

  create_table "skinning_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "smart_scripts", primary_key: ["entryorguid", "source_type", "id", "link"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "entryorguid", null: false
    t.integer "source_type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "id", limit: 2, default: 0, null: false, unsigned: true
    t.integer "link", limit: 2, default: 0, null: false, unsigned: true
    t.integer "event_type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "event_phase_mask", limit: 2, default: 0, null: false, unsigned: true
    t.integer "event_chance", limit: 1, default: 100, null: false, unsigned: true
    t.integer "event_flags", limit: 2, default: 0, null: false, unsigned: true
    t.integer "event_param1", default: 0, null: false, unsigned: true
    t.integer "event_param2", default: 0, null: false, unsigned: true
    t.integer "event_param3", default: 0, null: false, unsigned: true
    t.integer "event_param4", default: 0, null: false, unsigned: true
    t.integer "event_param5", default: 0, null: false, unsigned: true
    t.integer "event_param6", default: 0, null: false, unsigned: true
    t.integer "action_type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "action_param1", default: 0, null: false, unsigned: true
    t.integer "action_param2", default: 0, null: false, unsigned: true
    t.integer "action_param3", default: 0, null: false, unsigned: true
    t.integer "action_param4", default: 0, null: false, unsigned: true
    t.integer "action_param5", default: 0, null: false, unsigned: true
    t.integer "action_param6", default: 0, null: false, unsigned: true
    t.integer "target_type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "target_param1", default: 0, null: false, unsigned: true
    t.integer "target_param2", default: 0, null: false, unsigned: true
    t.integer "target_param3", default: 0, null: false, unsigned: true
    t.integer "target_param4", default: 0, null: false, unsigned: true
    t.float "target_x", default: 0.0, null: false
    t.float "target_y", default: 0.0, null: false
    t.float "target_z", default: 0.0, null: false
    t.float "target_o", default: 0.0, null: false
    t.text "comment", null: false, comment: "Event Comment"
  end

  create_table "soundentries_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "SoundType", default: 0, null: false
    t.string "Name", limit: 100
    t.string "File_1", limit: 100
    t.string "File_2", limit: 100
    t.string "File_3", limit: 100
    t.string "File_4", limit: 100
    t.string "File_5", limit: 100
    t.string "File_6", limit: 100
    t.string "File_7", limit: 100
    t.string "File_8", limit: 100
    t.string "File_9", limit: 100
    t.string "File_10", limit: 100
    t.integer "Freq_1", default: 0, null: false
    t.integer "Freq_2", default: 0, null: false
    t.integer "Freq_3", default: 0, null: false
    t.integer "Freq_4", default: 0, null: false
    t.integer "Freq_5", default: 0, null: false
    t.integer "Freq_6", default: 0, null: false
    t.integer "Freq_7", default: 0, null: false
    t.integer "Freq_8", default: 0, null: false
    t.integer "Freq_9", default: 0, null: false
    t.integer "Freq_10", default: 0, null: false
    t.string "DirectoryBase", limit: 100
    t.float "Volumefloat", default: 0.0, null: false
    t.integer "Flags", default: 0, null: false
    t.float "MinDistance", default: 0.0, null: false
    t.float "DistanceCutoff", default: 0.0, null: false
    t.integer "EAXDef", default: 0, null: false
    t.integer "SoundEntriesAdvancedID", default: 0, null: false
  end

  create_table "spell_area", primary_key: ["spell", "area", "quest_start", "aura_spell", "racemask", "gender"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "spell", default: 0, null: false, unsigned: true
    t.integer "area", default: 0, null: false, unsigned: true
    t.integer "quest_start", default: 0, null: false, unsigned: true
    t.integer "quest_end", default: 0, null: false, unsigned: true
    t.integer "aura_spell", default: 0, null: false
    t.integer "racemask", default: 0, null: false, unsigned: true
    t.integer "gender", limit: 1, default: 2, null: false, unsigned: true
    t.integer "autocast", limit: 1, default: 0, null: false, unsigned: true
    t.integer "quest_start_status", default: 64, null: false
    t.integer "quest_end_status", default: 11, null: false
  end

  create_table "spell_bonus_data", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "direct_bonus", default: 0.0, null: false
    t.float "dot_bonus", default: 0.0, null: false
    t.float "ap_bonus", default: 0.0, null: false
    t.float "ap_dot_bonus", default: 0.0, null: false
    t.string "comments"
  end

  create_table "spell_cooldown_overrides", primary_key: "Id", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "RecoveryTime", default: 0, null: false, unsigned: true
    t.integer "CategoryRecoveryTime", default: 0, null: false, unsigned: true
    t.integer "StartRecoveryTime", default: 0, null: false, unsigned: true
    t.integer "StartRecoveryCategory", default: 0, null: false, unsigned: true
    t.text "Comment"
  end

  create_table "spell_custom_attr", primary_key: "spell_id", id: { type: :integer, default: 0, comment: "spell id", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "SpellInfo custom attributes", force: :cascade do |t|
    t.integer "attributes", default: 0, null: false, comment: "SpellCustomAttributes", unsigned: true
  end

  create_table "spell_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Category", default: 0, null: false, unsigned: true
    t.integer "DispelType", default: 0, null: false, unsigned: true
    t.integer "Mechanic", default: 0, null: false, unsigned: true
    t.integer "Attributes", default: 0, null: false, unsigned: true
    t.integer "AttributesEx", default: 0, null: false, unsigned: true
    t.integer "AttributesEx2", default: 0, null: false, unsigned: true
    t.integer "AttributesEx3", default: 0, null: false, unsigned: true
    t.integer "AttributesEx4", default: 0, null: false, unsigned: true
    t.integer "AttributesEx5", default: 0, null: false, unsigned: true
    t.integer "AttributesEx6", default: 0, null: false, unsigned: true
    t.integer "AttributesEx7", default: 0, null: false, unsigned: true
    t.bigint "ShapeshiftMask", default: 0, null: false, unsigned: true
    t.integer "unk_320_2", default: 0, null: false
    t.bigint "ShapeshiftExclude", default: 0, null: false, unsigned: true
    t.integer "unk_320_3", default: 0, null: false
    t.integer "Targets", default: 0, null: false, unsigned: true
    t.integer "TargetCreatureType", default: 0, null: false, unsigned: true
    t.integer "RequiresSpellFocus", default: 0, null: false, unsigned: true
    t.integer "FacingCasterFlags", default: 0, null: false, unsigned: true
    t.integer "CasterAuraState", default: 0, null: false, unsigned: true
    t.integer "TargetAuraState", default: 0, null: false, unsigned: true
    t.integer "ExcludeCasterAuraState", default: 0, null: false, unsigned: true
    t.integer "ExcludeTargetAuraState", default: 0, null: false, unsigned: true
    t.integer "CasterAuraSpell", default: 0, null: false, unsigned: true
    t.integer "TargetAuraSpell", default: 0, null: false, unsigned: true
    t.integer "ExcludeCasterAuraSpell", default: 0, null: false, unsigned: true
    t.integer "ExcludeTargetAuraSpell", default: 0, null: false, unsigned: true
    t.integer "CastingTimeIndex", default: 0, null: false, unsigned: true
    t.integer "RecoveryTime", default: 0, null: false, unsigned: true
    t.integer "CategoryRecoveryTime", default: 0, null: false, unsigned: true
    t.integer "InterruptFlags", default: 0, null: false, unsigned: true
    t.integer "AuraInterruptFlags", default: 0, null: false, unsigned: true
    t.integer "ChannelInterruptFlags", default: 0, null: false, unsigned: true
    t.integer "ProcTypeMask", default: 0, null: false, unsigned: true
    t.integer "ProcChance", default: 0, null: false, unsigned: true
    t.integer "ProcCharges", default: 0, null: false, unsigned: true
    t.integer "MaxLevel", default: 0, null: false, unsigned: true
    t.integer "BaseLevel", default: 0, null: false, unsigned: true
    t.integer "SpellLevel", default: 0, null: false, unsigned: true
    t.integer "DurationIndex", default: 0, null: false, unsigned: true
    t.integer "PowerType", default: 0, null: false
    t.integer "ManaCost", default: 0, null: false, unsigned: true
    t.integer "ManaCostPerLevel", default: 0, null: false, unsigned: true
    t.integer "ManaPerSecond", default: 0, null: false, unsigned: true
    t.integer "ManaPerSecondPerLevel", default: 0, null: false, unsigned: true
    t.integer "RangeIndex", default: 0, null: false, unsigned: true
    t.float "Speed", default: 0.0, null: false
    t.integer "ModalNextSpell", default: 0, null: false, unsigned: true
    t.integer "CumulativeAura", default: 0, null: false, unsigned: true
    t.integer "Totem_1", default: 0, null: false, unsigned: true
    t.integer "Totem_2", default: 0, null: false, unsigned: true
    t.integer "Reagent_1", default: 0, null: false
    t.integer "Reagent_2", default: 0, null: false
    t.integer "Reagent_3", default: 0, null: false
    t.integer "Reagent_4", default: 0, null: false
    t.integer "Reagent_5", default: 0, null: false
    t.integer "Reagent_6", default: 0, null: false
    t.integer "Reagent_7", default: 0, null: false
    t.integer "Reagent_8", default: 0, null: false
    t.integer "ReagentCount_1", default: 0, null: false
    t.integer "ReagentCount_2", default: 0, null: false
    t.integer "ReagentCount_3", default: 0, null: false
    t.integer "ReagentCount_4", default: 0, null: false
    t.integer "ReagentCount_5", default: 0, null: false
    t.integer "ReagentCount_6", default: 0, null: false
    t.integer "ReagentCount_7", default: 0, null: false
    t.integer "ReagentCount_8", default: 0, null: false
    t.integer "EquippedItemClass", default: 0, null: false
    t.integer "EquippedItemSubclass", default: 0, null: false
    t.integer "EquippedItemInvTypes", default: 0, null: false
    t.integer "Effect_1", default: 0, null: false, unsigned: true
    t.integer "Effect_2", default: 0, null: false, unsigned: true
    t.integer "Effect_3", default: 0, null: false, unsigned: true
    t.integer "EffectDieSides_1", default: 0, null: false
    t.integer "EffectDieSides_2", default: 0, null: false
    t.integer "EffectDieSides_3", default: 0, null: false
    t.float "EffectRealPointsPerLevel_1", default: 0.0, null: false
    t.float "EffectRealPointsPerLevel_2", default: 0.0, null: false
    t.float "EffectRealPointsPerLevel_3", default: 0.0, null: false
    t.integer "EffectBasePoints_1", default: 0, null: false
    t.integer "EffectBasePoints_2", default: 0, null: false
    t.integer "EffectBasePoints_3", default: 0, null: false
    t.integer "EffectMechanic_1", default: 0, null: false, unsigned: true
    t.integer "EffectMechanic_2", default: 0, null: false, unsigned: true
    t.integer "EffectMechanic_3", default: 0, null: false, unsigned: true
    t.integer "ImplicitTargetA_1", default: 0, null: false, unsigned: true
    t.integer "ImplicitTargetA_2", default: 0, null: false, unsigned: true
    t.integer "ImplicitTargetA_3", default: 0, null: false, unsigned: true
    t.integer "ImplicitTargetB_1", default: 0, null: false, unsigned: true
    t.integer "ImplicitTargetB_2", default: 0, null: false, unsigned: true
    t.integer "ImplicitTargetB_3", default: 0, null: false, unsigned: true
    t.integer "EffectRadiusIndex_1", default: 0, null: false, unsigned: true
    t.integer "EffectRadiusIndex_2", default: 0, null: false, unsigned: true
    t.integer "EffectRadiusIndex_3", default: 0, null: false, unsigned: true
    t.integer "EffectAura_1", default: 0, null: false, unsigned: true
    t.integer "EffectAura_2", default: 0, null: false, unsigned: true
    t.integer "EffectAura_3", default: 0, null: false, unsigned: true
    t.integer "EffectAuraPeriod_1", default: 0, null: false, unsigned: true
    t.integer "EffectAuraPeriod_2", default: 0, null: false, unsigned: true
    t.integer "EffectAuraPeriod_3", default: 0, null: false, unsigned: true
    t.float "EffectMultipleValue_1", default: 0.0, null: false
    t.float "EffectMultipleValue_2", default: 0.0, null: false
    t.float "EffectMultipleValue_3", default: 0.0, null: false
    t.integer "EffectChainTargets_1", default: 0, null: false, unsigned: true
    t.integer "EffectChainTargets_2", default: 0, null: false, unsigned: true
    t.integer "EffectChainTargets_3", default: 0, null: false, unsigned: true
    t.integer "EffectItemType_1", default: 0, null: false, unsigned: true
    t.integer "EffectItemType_2", default: 0, null: false, unsigned: true
    t.integer "EffectItemType_3", default: 0, null: false, unsigned: true
    t.integer "EffectMiscValue_1", default: 0, null: false
    t.integer "EffectMiscValue_2", default: 0, null: false
    t.integer "EffectMiscValue_3", default: 0, null: false
    t.integer "EffectMiscValueB_1", default: 0, null: false
    t.integer "EffectMiscValueB_2", default: 0, null: false
    t.integer "EffectMiscValueB_3", default: 0, null: false
    t.integer "EffectTriggerSpell_1", default: 0, null: false, unsigned: true
    t.integer "EffectTriggerSpell_2", default: 0, null: false, unsigned: true
    t.integer "EffectTriggerSpell_3", default: 0, null: false, unsigned: true
    t.float "EffectPointsPerCombo_1", default: 0.0, null: false
    t.float "EffectPointsPerCombo_2", default: 0.0, null: false
    t.float "EffectPointsPerCombo_3", default: 0.0, null: false
    t.integer "EffectSpellClassMaskA_1", default: 0, null: false, unsigned: true
    t.integer "EffectSpellClassMaskA_2", default: 0, null: false, unsigned: true
    t.integer "EffectSpellClassMaskA_3", default: 0, null: false, unsigned: true
    t.integer "EffectSpellClassMaskB_1", default: 0, null: false, unsigned: true
    t.integer "EffectSpellClassMaskB_2", default: 0, null: false, unsigned: true
    t.integer "EffectSpellClassMaskB_3", default: 0, null: false, unsigned: true
    t.integer "EffectSpellClassMaskC_1", default: 0, null: false, unsigned: true
    t.integer "EffectSpellClassMaskC_2", default: 0, null: false, unsigned: true
    t.integer "EffectSpellClassMaskC_3", default: 0, null: false, unsigned: true
    t.integer "SpellVisualID_1", default: 0, null: false, unsigned: true
    t.integer "SpellVisualID_2", default: 0, null: false, unsigned: true
    t.integer "SpellIconID", default: 0, null: false, unsigned: true
    t.integer "ActiveIconID", default: 0, null: false, unsigned: true
    t.integer "SpellPriority", default: 0, null: false, unsigned: true
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "NameSubtext_Lang_enUS", limit: 100
    t.string "NameSubtext_Lang_enGB", limit: 100
    t.string "NameSubtext_Lang_koKR", limit: 100
    t.string "NameSubtext_Lang_frFR", limit: 100
    t.string "NameSubtext_Lang_deDE", limit: 100
    t.string "NameSubtext_Lang_enCN", limit: 100
    t.string "NameSubtext_Lang_zhCN", limit: 100
    t.string "NameSubtext_Lang_enTW", limit: 100
    t.string "NameSubtext_Lang_zhTW", limit: 100
    t.string "NameSubtext_Lang_esES", limit: 100
    t.string "NameSubtext_Lang_esMX", limit: 100
    t.string "NameSubtext_Lang_ruRU", limit: 100
    t.string "NameSubtext_Lang_ptPT", limit: 100
    t.string "NameSubtext_Lang_ptBR", limit: 100
    t.string "NameSubtext_Lang_itIT", limit: 100
    t.string "NameSubtext_Lang_Unk", limit: 100
    t.integer "NameSubtext_Lang_Mask", default: 0, null: false, unsigned: true
    t.text "Description_Lang_enUS"
    t.text "Description_Lang_enGB"
    t.text "Description_Lang_koKR"
    t.text "Description_Lang_frFR"
    t.text "Description_Lang_deDE"
    t.text "Description_Lang_enCN"
    t.text "Description_Lang_zhCN"
    t.text "Description_Lang_enTW"
    t.text "Description_Lang_zhTW"
    t.text "Description_Lang_esES"
    t.text "Description_Lang_esMX"
    t.text "Description_Lang_ruRU"
    t.text "Description_Lang_ptPT"
    t.text "Description_Lang_ptBR"
    t.text "Description_Lang_itIT"
    t.text "Description_Lang_Unk"
    t.integer "Description_Lang_Mask", default: 0, null: false, unsigned: true
    t.string "AuraDescription_Lang_enUS", limit: 550
    t.string "AuraDescription_Lang_enGB", limit: 550
    t.string "AuraDescription_Lang_koKR", limit: 550
    t.string "AuraDescription_Lang_frFR", limit: 550
    t.string "AuraDescription_Lang_deDE", limit: 550
    t.string "AuraDescription_Lang_enCN", limit: 550
    t.string "AuraDescription_Lang_zhCN", limit: 550
    t.string "AuraDescription_Lang_enTW", limit: 550
    t.string "AuraDescription_Lang_zhTW", limit: 550
    t.string "AuraDescription_Lang_esES", limit: 550
    t.string "AuraDescription_Lang_esMX", limit: 550
    t.string "AuraDescription_Lang_ruRU", limit: 550
    t.string "AuraDescription_Lang_ptPT", limit: 550
    t.string "AuraDescription_Lang_ptBR", limit: 550
    t.string "AuraDescription_Lang_itIT", limit: 550
    t.string "AuraDescription_Lang_Unk", limit: 100
    t.integer "AuraDescription_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "ManaCostPct", default: 0, null: false, unsigned: true
    t.integer "StartRecoveryCategory", default: 0, null: false, unsigned: true
    t.integer "StartRecoveryTime", default: 0, null: false, unsigned: true
    t.integer "MaxTargetLevel", default: 0, null: false, unsigned: true
    t.integer "SpellClassSet", default: 0, null: false, unsigned: true
    t.integer "SpellClassMask_1", default: 0, null: false, unsigned: true
    t.integer "SpellClassMask_2", default: 0, null: false, unsigned: true
    t.integer "SpellClassMask_3", default: 0, null: false, unsigned: true
    t.integer "MaxTargets", default: 0, null: false, unsigned: true
    t.integer "DefenseType", default: 0, null: false, unsigned: true
    t.integer "PreventionType", default: 0, null: false, unsigned: true
    t.integer "StanceBarOrder", default: 0, null: false, unsigned: true
    t.float "EffectChainAmplitude_1", default: 0.0, null: false
    t.float "EffectChainAmplitude_2", default: 0.0, null: false
    t.float "EffectChainAmplitude_3", default: 0.0, null: false
    t.integer "MinFactionID", default: 0, null: false, unsigned: true
    t.integer "MinReputation", default: 0, null: false, unsigned: true
    t.integer "RequiredAuraVision", default: 0, null: false, unsigned: true
    t.integer "RequiredTotemCategoryID_1", default: 0, null: false, unsigned: true
    t.integer "RequiredTotemCategoryID_2", default: 0, null: false, unsigned: true
    t.integer "RequiredAreasID", default: 0, null: false
    t.integer "SchoolMask", default: 0, null: false, unsigned: true
    t.integer "RuneCostID", default: 0, null: false, unsigned: true
    t.integer "SpellMissileID", default: 0, null: false, unsigned: true
    t.integer "PowerDisplayID", default: 0, null: false
    t.float "EffectBonusMultiplier_1", default: 0.0, null: false
    t.float "EffectBonusMultiplier_2", default: 0.0, null: false
    t.float "EffectBonusMultiplier_3", default: 0.0, null: false
    t.integer "SpellDescriptionVariableID", default: 0, null: false, unsigned: true
    t.integer "SpellDifficultyID", default: 0, null: false, unsigned: true
  end

  create_table "spell_enchant_proc_data", primary_key: "entry", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Spell enchant proc data", force: :cascade do |t|
    t.integer "customChance", default: 0, null: false, unsigned: true
    t.float "PPMChance", default: 0.0, null: false
    t.integer "procEx", default: 0, null: false, unsigned: true
    t.integer "attributeMask", default: 0, null: false, unsigned: true
    t.check_constraint "`PPMChance` >= 0", name: "spell_enchant_proc_data_chk_1"
  end

  create_table "spell_group", primary_key: ["id", "spell_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Spell System", force: :cascade do |t|
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "spell_id", default: 0, null: false, unsigned: true
    t.integer "special_flag", default: 0, null: false, unsigned: true
  end

  create_table "spell_group_stack_rules", primary_key: "group_id", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "stack_rule", limit: 1, default: 0, null: false
    t.string "description", limit: 150, default: "", null: false
  end

  create_table "spell_linked_spell", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Spell System", force: :cascade do |t|
    t.integer "spell_trigger", null: false
    t.integer "spell_effect", default: 0, null: false
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.text "comment", null: false
    t.index ["spell_trigger", "spell_effect", "type"], name: "trigger_effect_type", unique: true
  end

  create_table "spell_loot_template", primary_key: ["Entry", "Item"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Loot System", force: :cascade do |t|
    t.integer "Entry", default: 0, null: false, unsigned: true
    t.integer "Item", default: 0, null: false, unsigned: true
    t.integer "Reference", default: 0, null: false
    t.float "Chance", default: 100.0, null: false
    t.integer "QuestRequired", limit: 1, default: 0, null: false
    t.integer "LootMode", limit: 2, default: 1, null: false, unsigned: true
    t.integer "GroupId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MinCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "MaxCount", limit: 1, default: 1, null: false, unsigned: true
    t.string "Comment"
  end

  create_table "spell_mixology", primary_key: "entry", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "pctMod", default: 30.0, null: false, comment: "bonus multiplier"
  end

  create_table "spell_pet_auras", primary_key: ["spell", "effectId", "pet"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "spell", null: false, comment: "dummy spell id", unsigned: true
    t.integer "effectId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "pet", default: 0, null: false, comment: "pet id; 0 = all", unsigned: true
    t.integer "aura", null: false, comment: "pet aura id", unsigned: true
  end

  create_table "spell_proc", primary_key: "SpellId", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "SchoolMask", limit: 1, default: 0, null: false, unsigned: true
    t.integer "SpellFamilyName", limit: 2, default: 0, null: false, unsigned: true
    t.integer "SpellFamilyMask0", default: 0, null: false, unsigned: true
    t.integer "SpellFamilyMask1", default: 0, null: false, unsigned: true
    t.integer "SpellFamilyMask2", default: 0, null: false, unsigned: true
    t.integer "ProcFlags", default: 0, null: false, unsigned: true
    t.integer "SpellTypeMask", default: 0, null: false, unsigned: true
    t.integer "SpellPhaseMask", default: 0, null: false, unsigned: true
    t.integer "HitMask", default: 0, null: false, unsigned: true
    t.integer "AttributesMask", default: 0, null: false, unsigned: true
    t.float "ProcsPerMinute", default: 0.0, null: false
    t.float "Chance", default: 0.0, null: false
    t.integer "Cooldown", default: 0, null: false, unsigned: true
    t.integer "Charges", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "spell_proc_event", primary_key: "entry", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "SchoolMask", limit: 1, default: 0, null: false
    t.integer "SpellFamilyName", limit: 2, default: 0, null: false, unsigned: true
    t.integer "SpellFamilyMask0", default: 0, null: false, unsigned: true
    t.integer "SpellFamilyMask1", default: 0, null: false, unsigned: true
    t.integer "SpellFamilyMask2", default: 0, null: false, unsigned: true
    t.integer "procFlags", default: 0, null: false, unsigned: true
    t.integer "procEx", default: 0, null: false, unsigned: true
    t.integer "procPhase", default: 0, null: false, unsigned: true
    t.float "ppmRate", default: 0.0, null: false
    t.float "CustomChance", default: 0.0, null: false
    t.integer "Cooldown", default: 0, null: false, unsigned: true
  end

  create_table "spell_ranks", primary_key: ["first_spell_id", "rank"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Spell Rank Data", force: :cascade do |t|
    t.integer "first_spell_id", default: 0, null: false, unsigned: true
    t.integer "spell_id", default: 0, null: false, unsigned: true
    t.integer "rank", limit: 1, default: 0, null: false, unsigned: true
    t.index ["spell_id"], name: "spell_id", unique: true
  end

  create_table "spell_required", primary_key: ["spell_id", "req_spell"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Spell Additinal Data", force: :cascade do |t|
    t.integer "spell_id", default: 0, null: false
    t.integer "req_spell", default: 0, null: false
  end

  create_table "spell_script_names", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "spell_id", null: false
    t.string "ScriptName", limit: 64, null: false
    t.index ["spell_id", "ScriptName"], name: "spell_id", unique: true
  end

  create_table "spell_scripts", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "effIndex", limit: 1, default: 0, null: false, unsigned: true
    t.integer "delay", default: 0, null: false, unsigned: true
    t.integer "command", default: 0, null: false, unsigned: true
    t.integer "datalong", default: 0, null: false, unsigned: true
    t.integer "datalong2", default: 0, null: false, unsigned: true
    t.integer "dataint", default: 0, null: false
    t.float "x", default: 0.0, null: false
    t.float "y", default: 0.0, null: false
    t.float "z", default: 0.0, null: false
    t.float "o", default: 0.0, null: false
  end

  create_table "spell_target_position", primary_key: ["ID", "EffectIndex"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Spell System", force: :cascade do |t|
    t.integer "ID", default: 0, null: false, comment: "Identifier", unsigned: true
    t.integer "EffectIndex", limit: 1, default: 0, null: false, unsigned: true
    t.integer "MapID", limit: 2, default: 0, null: false, unsigned: true
    t.float "PositionX", default: 0.0, null: false
    t.float "PositionY", default: 0.0, null: false
    t.float "PositionZ", default: 0.0, null: false
    t.float "Orientation", default: 0.0, null: false
    t.integer "VerifiedBuild"
  end

  create_table "spell_threat", primary_key: "entry", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "flatMod"
    t.float "pctMod", default: 1.0, null: false, comment: "threat multiplier for damage/healing"
    t.float "apPctMod", default: 0.0, null: false, comment: "additional threat bonus from attack power"
  end

  create_table "spellcasttimes_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Base", default: 0, null: false
    t.integer "PerLevel", default: 0, null: false
    t.integer "Minimum", default: 0, null: false
  end

  create_table "spellcategory_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Flags", default: 0, null: false
  end

  create_table "spelldifficulty_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "DifficultySpellID_1", default: 0, null: false
    t.integer "DifficultySpellID_2", default: 0, null: false
    t.integer "DifficultySpellID_3", default: 0, null: false
    t.integer "DifficultySpellID_4", default: 0, null: false, unsigned: true
  end

  create_table "spellduration_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Duration", default: 0, null: false
    t.integer "DurationPerLevel", default: 0, null: false
    t.integer "MaxDuration", default: 0, null: false
  end

  create_table "spellfocusobject_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "spellitemenchantment_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Charges", default: 0, null: false
    t.integer "Effect_1", default: 0, null: false
    t.integer "Effect_2", default: 0, null: false
    t.integer "Effect_3", default: 0, null: false
    t.integer "EffectPointsMin_1", default: 0, null: false
    t.integer "EffectPointsMin_2", default: 0, null: false
    t.integer "EffectPointsMin_3", default: 0, null: false
    t.integer "EffectPointsMax_1", default: 0, null: false
    t.integer "EffectPointsMax_2", default: 0, null: false
    t.integer "EffectPointsMax_3", default: 0, null: false
    t.integer "EffectArg_1", default: 0, null: false
    t.integer "EffectArg_2", default: 0, null: false
    t.integer "EffectArg_3", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "ItemVisual", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "Src_ItemID", default: 0, null: false
    t.integer "Condition_Id", default: 0, null: false
    t.integer "RequiredSkillID", default: 0, null: false
    t.integer "RequiredSkillRank", default: 0, null: false
    t.integer "MinLevel", default: 0, null: false
  end

  create_table "spellitemenchantmentcondition_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Lt_OperandType_1", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Lt_OperandType_2", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Lt_OperandType_3", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Lt_OperandType_4", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Lt_OperandType_5", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Lt_Operand_1", default: 0, null: false
    t.integer "Lt_Operand_2", default: 0, null: false
    t.integer "Lt_Operand_3", default: 0, null: false
    t.integer "Lt_Operand_4", default: 0, null: false
    t.integer "Lt_Operand_5", default: 0, null: false
    t.integer "Operator_1", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Operator_2", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Operator_3", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Operator_4", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Operator_5", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Rt_OperandType_1", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Rt_OperandType_2", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Rt_OperandType_3", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Rt_OperandType_4", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Rt_OperandType_5", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Rt_Operand_1", default: 0, null: false
    t.integer "Rt_Operand_2", default: 0, null: false
    t.integer "Rt_Operand_3", default: 0, null: false
    t.integer "Rt_Operand_4", default: 0, null: false
    t.integer "Rt_Operand_5", default: 0, null: false
    t.integer "Logic_1", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Logic_2", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Logic_3", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Logic_4", limit: 1, default: 0, null: false, unsigned: true
    t.integer "Logic_5", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "spellradius_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Radius", default: 0.0, null: false
    t.float "RadiusPerLevel", default: 0.0, null: false
    t.float "RadiusMax", default: 0.0, null: false
  end

  create_table "spellrange_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "RangeMin_1", default: 0.0, null: false
    t.float "RangeMin_2", default: 0.0, null: false
    t.float "RangeMax_1", default: 0.0, null: false
    t.float "RangeMax_2", default: 0.0, null: false
    t.integer "Flags", default: 0, null: false
    t.text "DisplayName_Lang_enUS"
    t.text "DisplayName_Lang_enGB"
    t.text "DisplayName_Lang_koKR"
    t.text "DisplayName_Lang_frFR"
    t.text "DisplayName_Lang_deDE"
    t.text "DisplayName_Lang_enCN"
    t.text "DisplayName_Lang_zhCN"
    t.text "DisplayName_Lang_enTW"
    t.text "DisplayName_Lang_zhTW"
    t.text "DisplayName_Lang_esES"
    t.text "DisplayName_Lang_esMX"
    t.text "DisplayName_Lang_ruRU"
    t.text "DisplayName_Lang_ptPT"
    t.text "DisplayName_Lang_ptBR"
    t.text "DisplayName_Lang_itIT"
    t.text "DisplayName_Lang_Unk"
    t.integer "DisplayName_Lang_Mask", default: 0, null: false, unsigned: true
    t.text "DisplayNameShort_Lang_enUS"
    t.text "DisplayNameShort_Lang_enGB"
    t.text "DisplayNameShort_Lang_koKR"
    t.text "DisplayNameShort_Lang_frFR"
    t.text "DisplayNameShort_Lang_deDE"
    t.text "DisplayNameShort_Lang_enCN"
    t.text "DisplayNameShort_Lang_zhCN"
    t.text "DisplayNameShort_Lang_enTW"
    t.text "DisplayNameShort_Lang_zhTW"
    t.text "DisplayNameShort_Lang_esES"
    t.text "DisplayNameShort_Lang_esMX"
    t.text "DisplayNameShort_Lang_ruRU"
    t.text "DisplayNameShort_Lang_ptPT"
    t.text "DisplayNameShort_Lang_ptBR"
    t.text "DisplayNameShort_Lang_itIT"
    t.text "DisplayNameShort_Lang_Unk"
    t.integer "DisplayNameShort_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "spellrunecost_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Blood", default: 0, null: false
    t.integer "Unholy", default: 0, null: false
    t.integer "Frost", default: 0, null: false
    t.integer "RunicPower", default: 0, null: false
  end

  create_table "spellshapeshiftform_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "BonusActionBar", default: 0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "Flags", default: 0, null: false
    t.integer "CreatureType", default: 0, null: false
    t.integer "AttackIconID", default: 0, null: false
    t.integer "CombatRoundTime", default: 0, null: false
    t.integer "CreatureDisplayID_1", default: 0, null: false
    t.integer "CreatureDisplayID_2", default: 0, null: false
    t.integer "CreatureDisplayID_3", default: 0, null: false
    t.integer "CreatureDisplayID_4", default: 0, null: false
    t.integer "PresetSpellID_1", default: 0, null: false
    t.integer "PresetSpellID_2", default: 0, null: false
    t.integer "PresetSpellID_3", default: 0, null: false
    t.integer "PresetSpellID_4", default: 0, null: false
    t.integer "PresetSpellID_5", default: 0, null: false
    t.integer "PresetSpellID_6", default: 0, null: false
    t.integer "PresetSpellID_7", default: 0, null: false
    t.integer "PresetSpellID_8", default: 0, null: false
  end

  create_table "spellvisual_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "PrecastKit", default: 0, null: false
    t.integer "CastKit", default: 0, null: false
    t.integer "ImpactKit", default: 0, null: false
    t.integer "StateKit", default: 0, null: false
    t.integer "StateDoneKit", default: 0, null: false
    t.integer "ChannelKit", default: 0, null: false
    t.integer "HasMissile", default: 0, null: false
    t.integer "MissileModel", default: 0, null: false
    t.integer "MissilePathType", default: 0, null: false
    t.integer "MissileDestinationAttachment", default: 0, null: false
    t.integer "MissileSound", default: 0, null: false
    t.integer "AnimEventSoundID", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "CasterImpactKit", default: 0, null: false
    t.integer "TargetImpactKit", default: 0, null: false
    t.integer "MissileAttachment", default: 0, null: false
    t.integer "MissileFollowGroundHeight", default: 0, null: false
    t.integer "MissileFollowGroundDropSpeed", default: 0, null: false
    t.integer "MissileFollowGroundApproach", default: 0, null: false
    t.integer "MissileFollowGroundFlags", default: 0, null: false
    t.integer "MissileMotion", default: 0, null: false
    t.integer "MissileTargetingKit", default: 0, null: false
    t.integer "InstantAreaKit", default: 0, null: false
    t.integer "ImpactAreaKit", default: 0, null: false
    t.integer "PersistentAreaKit", default: 0, null: false
    t.float "MissileCastOffsetX", default: 0.0, null: false
    t.float "MissileCastOffsetY", default: 0.0, null: false
    t.float "MissileCastOffsetZ", default: 0.0, null: false
    t.float "MissileImpactOffsetX", default: 0.0, null: false
    t.float "MissileImpactOffsetY", default: 0.0, null: false
    t.float "MissileImpactOffsetZ", default: 0.0, null: false
  end

  create_table "stableslotprices_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Cost", default: 0, null: false
  end

  create_table "summonproperties_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Control", default: 0, null: false
    t.integer "Faction", default: 0, null: false
    t.integer "Title", default: 0, null: false
    t.integer "Slot", default: 0, null: false
    t.integer "Flags", default: 0, null: false
  end

  create_table "talent_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "TabID", default: 0, null: false
    t.integer "TierID", default: 0, null: false
    t.integer "ColumnIndex", default: 0, null: false
    t.integer "SpellRank_1", default: 0, null: false
    t.integer "SpellRank_2", default: 0, null: false
    t.integer "SpellRank_3", default: 0, null: false
    t.integer "SpellRank_4", default: 0, null: false
    t.integer "SpellRank_5", default: 0, null: false
    t.integer "SpellRank_6", default: 0, null: false
    t.integer "SpellRank_7", default: 0, null: false
    t.integer "SpellRank_8", default: 0, null: false
    t.integer "SpellRank_9", default: 0, null: false
    t.integer "PrereqTalent_1", default: 0, null: false
    t.integer "PrereqTalent_2", default: 0, null: false
    t.integer "PrereqTalent_3", default: 0, null: false
    t.integer "PrereqRank_1", default: 0, null: false
    t.integer "PrereqRank_2", default: 0, null: false
    t.integer "PrereqRank_3", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "RequiredSpellID", default: 0, null: false
    t.integer "CategoryMask_1", default: 0, null: false
    t.integer "CategoryMask_2", default: 0, null: false
  end

  create_table "talenttab_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "SpellIconID", default: 0, null: false
    t.integer "RaceMask", default: 0, null: false
    t.integer "ClassMask", default: 0, null: false
    t.integer "PetTalentMask", default: 0, null: false
    t.integer "OrderIndex", default: 0, null: false
    t.string "BackgroundFile", limit: 100
  end

  create_table "taxinodes_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "ContinentID", default: 0, null: false
    t.float "X", default: 0.0, null: false
    t.float "Y", default: 0.0, null: false
    t.float "Z", default: 0.0, null: false
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "MountCreatureID_1", default: 0, null: false
    t.integer "MountCreatureID_2", default: 0, null: false
  end

  create_table "taxipath_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "FromTaxiNode", default: 0, null: false
    t.integer "ToTaxiNode", default: 0, null: false
    t.integer "Cost", default: 0, null: false
  end

  create_table "taxipathnode_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "PathID", default: 0, null: false
    t.integer "NodeIndex", default: 0, null: false
    t.integer "ContinentID", default: 0, null: false
    t.float "LocX", default: 0.0, null: false
    t.float "LocY", default: 0.0, null: false
    t.float "LocZ", default: 0.0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "Delay", default: 0, null: false
    t.integer "ArrivalEventID", default: 0, null: false
    t.integer "DepartureEventID", default: 0, null: false
  end

  create_table "teamcontributionpoints_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.float "Data", default: 0.0, null: false
  end

  create_table "totemcategory_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name_Lang_enUS", limit: 100
    t.string "Name_Lang_enGB", limit: 100
    t.string "Name_Lang_koKR", limit: 100
    t.string "Name_Lang_frFR", limit: 100
    t.string "Name_Lang_deDE", limit: 100
    t.string "Name_Lang_enCN", limit: 100
    t.string "Name_Lang_zhCN", limit: 100
    t.string "Name_Lang_enTW", limit: 100
    t.string "Name_Lang_zhTW", limit: 100
    t.string "Name_Lang_esES", limit: 100
    t.string "Name_Lang_esMX", limit: 100
    t.string "Name_Lang_ruRU", limit: 100
    t.string "Name_Lang_ptPT", limit: 100
    t.string "Name_Lang_ptBR", limit: 100
    t.string "Name_Lang_itIT", limit: 100
    t.string "Name_Lang_Unk", limit: 100
    t.integer "Name_Lang_Mask", default: 0, null: false, unsigned: true
    t.integer "TotemCategoryType", default: 0, null: false
    t.integer "TotemCategoryMask", default: 0, null: false
  end

  create_table "transportanimation_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "TransportID", default: 0, null: false
    t.integer "TimeIndex", default: 0, null: false
    t.float "PosX", default: 0.0, null: false
    t.float "PosY", default: 0.0, null: false
    t.float "PosZ", default: 0.0, null: false
    t.integer "SequenceID", default: 0, null: false
  end

  create_table "transportrotation_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "GameObjectsID", default: 0, null: false
    t.integer "TimeIndex", default: 0, null: false
    t.float "RotX", default: 0.0, null: false
    t.float "RotY", default: 0.0, null: false
    t.float "RotZ", default: 0.0, null: false
    t.float "RotW", default: 0.0, null: false
  end

  create_table "transports", primary_key: "guid", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Transports", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, unsigned: true
    t.text "name"
    t.string "ScriptName", limit: 64, default: "", null: false
    t.index ["entry"], name: "idx_entry", unique: true
  end

  create_table "updates", primary_key: "name", id: { type: :string, limit: 200, comment: "filename with extension of the update." }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "List of all applied updates in this database.", force: :cascade do |t|
    t.string "hash", limit: 40, default: "", comment: "sha1 hash of the sql file."
    t.column "state", "enum('RELEASED','CUSTOM','MODULE','ARCHIVED')", default: "RELEASED", null: false, comment: "defines if an update is released or archived."
    t.timestamp "timestamp", default: -> { "CURRENT_TIMESTAMP" }, null: false, comment: "timestamp when the query was applied."
    t.integer "speed", default: 0, null: false, comment: "time the query takes to apply in ms.", unsigned: true
  end

  create_table "updates_include", primary_key: "path", id: { type: :string, limit: 200, comment: "directory to include. $ means relative to the source directory." }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "List of directories where we want to include sql updates.", force: :cascade do |t|
    t.column "state", "enum('RELEASED','ARCHIVED','CUSTOM')", default: "RELEASED", null: false, comment: "defines if the directory contains released or archived updates."
  end

  create_table "vehicle_accessory", primary_key: ["guid", "seat_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "accessory_entry", default: 0, null: false, unsigned: true
    t.integer "seat_id", limit: 1, default: 0, null: false
    t.integer "minion", limit: 1, default: 0, null: false, unsigned: true
    t.text "description", null: false
    t.integer "summontype", limit: 1, default: 6, null: false, comment: "see enum TempSummonType", unsigned: true
    t.integer "summontimer", default: 30000, null: false, comment: "timer, only relevant for certain summontypes", unsigned: true
  end

  create_table "vehicle_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Flags", default: 0, null: false
    t.float "TurnSpeed", default: 0.0, null: false
    t.float "PitchSpeed", default: 0.0, null: false
    t.float "PitchMin", default: 0.0, null: false
    t.float "PitchMax", default: 0.0, null: false
    t.integer "SeatID_1", default: 0, null: false
    t.integer "SeatID_2", default: 0, null: false
    t.integer "SeatID_3", default: 0, null: false
    t.integer "SeatID_4", default: 0, null: false
    t.integer "SeatID_5", default: 0, null: false
    t.integer "SeatID_6", default: 0, null: false
    t.integer "SeatID_7", default: 0, null: false
    t.integer "SeatID_8", default: 0, null: false
    t.float "MouseLookOffsetPitch", default: 0.0, null: false
    t.float "CameraFadeDistScalarMin", default: 0.0, null: false
    t.float "CameraFadeDistScalarMax", default: 0.0, null: false
    t.float "CameraPitchOffset", default: 0.0, null: false
    t.float "FacingLimitRight", default: 0.0, null: false
    t.float "FacingLimitLeft", default: 0.0, null: false
    t.float "MsslTrgtTurnLingering", default: 0.0, null: false
    t.float "MsslTrgtPitchLingering", default: 0.0, null: false
    t.float "MsslTrgtMouseLingering", default: 0.0, null: false
    t.float "MsslTrgtEndOpacity", default: 0.0, null: false
    t.float "MsslTrgtArcSpeed", default: 0.0, null: false
    t.float "MsslTrgtArcRepeat", default: 0.0, null: false
    t.float "MsslTrgtArcWidth", default: 0.0, null: false
    t.float "MsslTrgtImpactRadius_1", default: 0.0, null: false
    t.float "MsslTrgtImpactRadius_2", default: 0.0, null: false
    t.string "MsslTrgtArcTexture", limit: 100
    t.string "MsslTrgtImpactTexture", limit: 100
    t.string "MsslTrgtImpactModel_1", limit: 100
    t.string "MsslTrgtImpactModel_2", limit: 100
    t.float "CameraYawOffset", default: 0.0, null: false
    t.integer "UilocomotionType", default: 0, null: false
    t.float "MsslTrgtImpactTexRadius", default: 0.0, null: false
    t.integer "VehicleUIIndicatorID", default: 0, null: false
    t.integer "PowerDisplayID_1", default: 0, null: false
    t.integer "PowerDisplayID_2", default: 0, null: false
    t.integer "PowerDisplayID_3", default: 0, null: false
  end

  create_table "vehicle_template_accessory", primary_key: ["entry", "seat_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, unsigned: true
    t.integer "accessory_entry", default: 0, null: false, unsigned: true
    t.integer "seat_id", limit: 1, default: 0, null: false
    t.integer "minion", limit: 1, default: 0, null: false, unsigned: true
    t.text "description", null: false
    t.integer "summontype", limit: 1, default: 6, null: false, comment: "see enum TempSummonType", unsigned: true
    t.integer "summontimer", default: 30000, null: false, comment: "timer, only relevant for certain summontypes", unsigned: true
  end

  create_table "vehicleseat_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Flags", default: 0, null: false
    t.integer "AttachmentID", default: 0, null: false
    t.float "AttachmentOffsetX", default: 0.0, null: false
    t.float "AttachmentOffsetY", default: 0.0, null: false
    t.float "AttachmentOffsetZ", default: 0.0, null: false
    t.float "EnterPreDelay", default: 0.0, null: false
    t.float "EnterSpeed", default: 0.0, null: false
    t.float "EnterGravity", default: 0.0, null: false
    t.float "EnterMinDuration", default: 0.0, null: false
    t.float "EnterMaxDuration", default: 0.0, null: false
    t.float "EnterMinArcHeight", default: 0.0, null: false
    t.float "EnterMaxArcHeight", default: 0.0, null: false
    t.integer "EnterAnimStart", default: 0, null: false
    t.integer "EnterAnimLoop", default: 0, null: false
    t.integer "RideAnimStart", default: 0, null: false
    t.integer "RideAnimLoop", default: 0, null: false
    t.integer "RideUpperAnimStart", default: 0, null: false
    t.integer "RideUpperAnimLoop", default: 0, null: false
    t.float "ExitPreDelay", default: 0.0, null: false
    t.float "ExitSpeed", default: 0.0, null: false
    t.float "ExitGravity", default: 0.0, null: false
    t.float "ExitMinDuration", default: 0.0, null: false
    t.float "ExitMaxDuration", default: 0.0, null: false
    t.float "ExitMinArcHeight", default: 0.0, null: false
    t.float "ExitMaxArcHeight", default: 0.0, null: false
    t.integer "ExitAnimStart", default: 0, null: false
    t.integer "ExitAnimLoop", default: 0, null: false
    t.integer "ExitAnimEnd", default: 0, null: false
    t.float "PassengerYaw", default: 0.0, null: false
    t.float "PassengerPitch", default: 0.0, null: false
    t.float "PassengerRoll", default: 0.0, null: false
    t.integer "PassengerAttachmentID", default: 0, null: false
    t.integer "VehicleEnterAnim", default: 0, null: false
    t.integer "VehicleExitAnim", default: 0, null: false
    t.integer "VehicleRideAnimLoop", default: 0, null: false
    t.integer "VehicleEnterAnimBone", default: 0, null: false
    t.integer "VehicleExitAnimBone", default: 0, null: false
    t.integer "VehicleRideAnimLoopBone", default: 0, null: false
    t.float "VehicleEnterAnimDelay", default: 0.0, null: false
    t.float "VehicleExitAnimDelay", default: 0.0, null: false
    t.integer "VehicleAbilityDisplay", default: 0, null: false
    t.integer "EnterUISoundID", default: 0, null: false
    t.integer "ExitUISoundID", default: 0, null: false
    t.integer "UiSkin", default: 0, null: false
    t.integer "FlagsB", default: 0, null: false
    t.float "CameraEnteringDelay", default: 0.0, null: false
    t.float "CameraEnteringDuration", default: 0.0, null: false
    t.float "CameraExitingDelay", default: 0.0, null: false
    t.float "CameraExitingDuration", default: 0.0, null: false
    t.float "CameraOffsetX", default: 0.0, null: false
    t.float "CameraOffsetY", default: 0.0, null: false
    t.float "CameraOffsetZ", default: 0.0, null: false
    t.float "CameraPosChaseRate", default: 0.0, null: false
    t.float "CameraFacingChaseRate", default: 0.0, null: false
    t.float "CameraEnteringZoom", default: 0.0, null: false
    t.float "CameraSeatZoomMin", default: 0.0, null: false
    t.float "CameraSeatZoomMax", default: 0.0, null: false
  end

  create_table "version", primary_key: "core_version", id: { type: :string, default: "", comment: "Core revision dumped at startup." }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Version Notes", force: :cascade do |t|
    t.string "core_revision", limit: 120
    t.string "db_version", limit: 120, comment: "Version of world DB."
    t.integer "cache_id", default: 0
  end

  create_table "warden_checks", id: { type: :integer, limit: 2, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "type", limit: 1, unsigned: true
    t.string "data", limit: 48
    t.string "str", limit: 170
    t.integer "address", unsigned: true
    t.integer "length", limit: 1, unsigned: true
    t.string "result", limit: 24
    t.string "comment", limit: 50
  end

  create_table "waypoint_data", primary_key: ["id", "point"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", default: 0, null: false, comment: "Creature GUID", unsigned: true
    t.integer "point", default: 0, null: false, unsigned: true
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.float "orientation"
    t.integer "delay", default: 0, null: false, unsigned: true
    t.integer "move_type", default: 0, null: false
    t.integer "action", default: 0, null: false
    t.integer "action_chance", limit: 2, default: 100, null: false
    t.integer "wpguid", default: 0, null: false, unsigned: true
  end

  create_table "waypoint_scripts", primary_key: "guid", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", default: 0, null: false, unsigned: true
    t.integer "delay", default: 0, null: false, unsigned: true
    t.integer "command", default: 0, null: false, unsigned: true
    t.integer "datalong", default: 0, null: false, unsigned: true
    t.integer "datalong2", default: 0, null: false, unsigned: true
    t.integer "dataint", default: 0, null: false, unsigned: true
    t.float "x", default: 0.0, null: false
    t.float "y", default: 0.0, null: false
    t.float "z", default: 0.0, null: false
    t.float "o", default: 0.0, null: false
  end

  create_table "waypoints", primary_key: ["entry", "pointid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Creature waypoints", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, unsigned: true
    t.integer "pointid", default: 0, null: false, unsigned: true
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.float "orientation"
    t.integer "delay", default: 0, null: false, unsigned: true
    t.text "point_comment"
  end

  create_table "wmoareatable_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "WMOID", default: 0, null: false
    t.integer "NameSetID", default: 0, null: false
    t.integer "WMOGroupID", default: 0, null: false
    t.integer "SoundProviderPref", default: 0, null: false
    t.integer "SoundProviderPrefUnderwater", default: 0, null: false
    t.integer "AmbienceID", default: 0, null: false
    t.integer "ZoneMusic", default: 0, null: false
    t.integer "IntroSound", default: 0, null: false
    t.integer "Flags", default: 0, null: false
    t.integer "AreaTableID", default: 0, null: false
    t.string "AreaName_Lang_enUS", limit: 100
    t.string "AreaName_Lang_enGB", limit: 100
    t.string "AreaName_Lang_koKR", limit: 100
    t.string "AreaName_Lang_frFR", limit: 100
    t.string "AreaName_Lang_deDE", limit: 100
    t.string "AreaName_Lang_enCN", limit: 100
    t.string "AreaName_Lang_zhCN", limit: 100
    t.string "AreaName_Lang_enTW", limit: 100
    t.string "AreaName_Lang_zhTW", limit: 100
    t.string "AreaName_Lang_esES", limit: 100
    t.string "AreaName_Lang_esMX", limit: 100
    t.string "AreaName_Lang_ruRU", limit: 100
    t.string "AreaName_Lang_ptPT", limit: 100
    t.string "AreaName_Lang_ptBR", limit: 100
    t.string "AreaName_Lang_itIT", limit: 100
    t.string "AreaName_Lang_Unk", limit: 100
    t.integer "AreaName_Lang_Mask", default: 0, null: false, unsigned: true
  end

  create_table "worldmaparea_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MapID", default: 0, null: false
    t.integer "AreaID", default: 0, null: false
    t.string "AreaName", limit: 100
    t.float "LocLeft", default: 0.0, null: false
    t.float "LocRight", default: 0.0, null: false
    t.float "LocTop", default: 0.0, null: false
    t.float "LocBottom", default: 0.0, null: false
    t.integer "DisplayMapID", default: 0, null: false
    t.integer "DefaultDungeonFloor", default: 0, null: false
    t.integer "ParentWorldMapID", default: 0, null: false
  end

  create_table "worldmapoverlay_dbc", primary_key: "ID", id: :integer, default: 0, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "MapAreaID", default: 0, null: false
    t.integer "AreaID_1", default: 0, null: false
    t.integer "AreaID_2", default: 0, null: false
    t.integer "AreaID_3", default: 0, null: false
    t.integer "AreaID_4", default: 0, null: false
    t.integer "MapPointX", default: 0, null: false
    t.integer "MapPointY", default: 0, null: false
    t.string "TextureName", limit: 100
    t.integer "TextureWidth", default: 0, null: false
    t.integer "TextureHeight", default: 0, null: false
    t.integer "OffsetX", default: 0, null: false
    t.integer "OffsetY", default: 0, null: false
    t.integer "HitRectTop", default: 0, null: false
    t.integer "HitRectLeft", default: 0, null: false
    t.integer "HitRectBottom", default: 0, null: false
    t.integer "HitRectRight", default: 0, null: false
  end
end
