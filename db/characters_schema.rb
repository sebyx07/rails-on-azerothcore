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
  create_table "account_data", primary_key: ["accountId", "type"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "accountId", default: 0, null: false, comment: "Account Identifier", unsigned: true
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "time", default: 0, null: false, unsigned: true
    t.binary "data", null: false
  end

  create_table "account_instance_times", primary_key: ["accountId", "instanceId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "accountId", null: false, unsigned: true
    t.integer "instanceId", default: 0, null: false, unsigned: true
    t.bigint "releaseTime", default: 0, null: false, unsigned: true
  end

  create_table "account_tutorial", primary_key: "accountId", id: { type: :integer, default: 0, comment: "Account Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "tut0", default: 0, null: false, unsigned: true
    t.integer "tut1", default: 0, null: false, unsigned: true
    t.integer "tut2", default: 0, null: false, unsigned: true
    t.integer "tut3", default: 0, null: false, unsigned: true
    t.integer "tut4", default: 0, null: false, unsigned: true
    t.integer "tut5", default: 0, null: false, unsigned: true
    t.integer "tut6", default: 0, null: false, unsigned: true
    t.integer "tut7", default: 0, null: false, unsigned: true
  end

  create_table "addons", primary_key: "name", id: { type: :string, limit: 120, default: "" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Addons", force: :cascade do |t|
    t.integer "crc", default: 0, null: false, unsigned: true
  end

  create_table "arena_team", primary_key: "arenaTeamId", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 24, null: false
    t.integer "captainGuid", default: 0, null: false, unsigned: true
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "rating", limit: 2, default: 0, null: false, unsigned: true
    t.integer "seasonGames", limit: 2, default: 0, null: false, unsigned: true
    t.integer "seasonWins", limit: 2, default: 0, null: false, unsigned: true
    t.integer "weekGames", limit: 2, default: 0, null: false, unsigned: true
    t.integer "weekWins", limit: 2, default: 0, null: false, unsigned: true
    t.integer "rank", default: 0, null: false, unsigned: true
    t.integer "backgroundColor", default: 0, null: false, unsigned: true
    t.integer "emblemStyle", limit: 1, default: 0, null: false, unsigned: true
    t.integer "emblemColor", default: 0, null: false, unsigned: true
    t.integer "borderStyle", limit: 1, default: 0, null: false, unsigned: true
    t.integer "borderColor", default: 0, null: false, unsigned: true
  end

  create_table "arena_team_member", primary_key: ["arenaTeamId", "guid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "arenaTeamId", default: 0, null: false, unsigned: true
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "weekGames", limit: 2, default: 0, null: false, unsigned: true
    t.integer "weekWins", limit: 2, default: 0, null: false, unsigned: true
    t.integer "seasonGames", limit: 2, default: 0, null: false, unsigned: true
    t.integer "seasonWins", limit: 2, default: 0, null: false, unsigned: true
    t.integer "personalRating", limit: 2, default: 0, null: false
  end

  create_table "auctionhouse", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "houseid", limit: 1, default: 7, null: false, unsigned: true
    t.integer "itemguid", default: 0, null: false, unsigned: true
    t.integer "itemowner", default: 0, null: false, unsigned: true
    t.integer "buyoutprice", default: 0, null: false, unsigned: true
    t.integer "time", default: 0, null: false, unsigned: true
    t.integer "buyguid", default: 0, null: false, unsigned: true
    t.integer "lastbid", default: 0, null: false, unsigned: true
    t.integer "startbid", default: 0, null: false, unsigned: true
    t.integer "deposit", default: 0, null: false, unsigned: true
    t.index ["itemguid"], name: "item_guid", unique: true
  end

  create_table "banned_addons", primary_key: "Id", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Name", null: false
    t.string "Version", default: "", null: false
    t.timestamp "Timestamp", default: -> { "CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP" }, null: false
    t.index ["Name", "Version"], name: "idx_name_ver", unique: true
  end

  create_table "battleground_deserters", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", null: false, comment: "characters.guid", unsigned: true
    t.integer "type", limit: 1, null: false, comment: "type of the desertion", unsigned: true
    t.datetime "datetime", precision: nil, null: false, comment: "datetime of the desertion"
  end

  create_table "bugreport", id: { type: :integer, comment: "Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Debug System", force: :cascade do |t|
    t.text "type", size: :long, null: false
    t.text "content", size: :long, null: false
  end

  create_table "calendar_events", id: { type: :bigint, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "creator", default: 0, null: false, unsigned: true
    t.string "title", default: "", null: false
    t.string "description", default: "", null: false
    t.integer "type", limit: 1, default: 4, null: false, unsigned: true
    t.integer "dungeon", default: -1, null: false
    t.integer "eventtime", default: 0, null: false, unsigned: true
    t.integer "flags", default: 0, null: false, unsigned: true
    t.integer "time2", default: 0, null: false, unsigned: true
  end

  create_table "calendar_invites", id: { type: :bigint, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "event", default: 0, null: false, unsigned: true
    t.integer "invitee", default: 0, null: false, unsigned: true
    t.integer "sender", default: 0, null: false, unsigned: true
    t.integer "status", limit: 1, default: 0, null: false, unsigned: true
    t.integer "statustime", default: 0, null: false, unsigned: true
    t.integer "rank", limit: 1, default: 0, null: false, unsigned: true
    t.string "text", default: "", null: false
  end

  create_table "channels", primary_key: "channelId", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Channel System", force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.integer "team", null: false, unsigned: true
    t.integer "announce", limit: 1, default: 1, null: false, unsigned: true
    t.integer "ownership", limit: 1, default: 1, null: false, unsigned: true
    t.string "password", limit: 32
    t.integer "lastUsed", null: false, unsigned: true
  end

  create_table "channels_bans", primary_key: ["channelId", "playerGUID"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "channelId", null: false, unsigned: true
    t.integer "playerGUID", null: false, unsigned: true
    t.integer "banTime", null: false, unsigned: true
  end

  create_table "channels_rights", primary_key: "name", id: { type: :string, limit: 128 }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "flags", null: false, unsigned: true
    t.integer "speakdelay", null: false, unsigned: true
    t.string "joinmessage", default: "", null: false
    t.string "delaymessage", default: "", null: false
    t.text "moderators"
  end

  create_table "character_account_data", primary_key: ["guid", "type"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.integer "time", default: 0, null: false, unsigned: true
    t.binary "data", null: false
  end

  create_table "character_achievement", primary_key: ["guid", "achievement"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", null: false, unsigned: true
    t.integer "achievement", limit: 2, null: false, unsigned: true
    t.integer "date", default: 0, null: false, unsigned: true
  end

  create_table "character_achievement_offline_updates", id: false, charset: "utf8mb4", collation: "utf8mb4_general_ci", comment: "Stores updates to character achievements when the character was offline", force: :cascade do |t|
    t.bigint "guid", null: false, comment: "Character's GUID", unsigned: true
    t.integer "update_type", limit: 1, null: false, comment: "Supported types: 1 - COMPLETE_ACHIEVEMENT; 2 - UPDATE_CRITERIA", unsigned: true
    t.integer "arg1", null: false, comment: "For type 1: achievement ID; for type 2: ACHIEVEMENT_CRITERIA_TYPE", unsigned: true
    t.integer "arg2", comment: "For type 2: miscValue1 for updating achievement criteria", unsigned: true
    t.integer "arg3", comment: "For type 2: miscValue2 for updating achievement criteria", unsigned: true
    t.index ["guid"], name: "idx_guid"
  end

  create_table "character_achievement_progress", primary_key: ["guid", "criteria"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", null: false, unsigned: true
    t.integer "criteria", limit: 2, null: false, unsigned: true
    t.integer "counter", null: false, unsigned: true
    t.integer "date", default: 0, null: false, unsigned: true
  end

  create_table "character_action", primary_key: ["guid", "spec", "button"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "spec", limit: 1, default: 0, null: false, unsigned: true
    t.integer "button", limit: 1, default: 0, null: false, unsigned: true
    t.integer "action", default: 0, null: false, unsigned: true
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "character_arena_stats", primary_key: ["guid", "slot"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "slot", limit: 1, default: 0, null: false, unsigned: true
    t.integer "matchMakerRating", limit: 2, default: 0, null: false, unsigned: true
    t.integer "maxMMR", limit: 2, null: false
  end

  create_table "character_aura", primary_key: ["guid", "casterGuid", "itemGuid", "spell", "effectMask"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.bigint "casterGuid", default: 0, null: false, comment: "Full Global Unique Identifier", unsigned: true
    t.bigint "itemGuid", default: 0, null: false, unsigned: true
    t.integer "spell", default: 0, null: false, unsigned: true
    t.integer "effectMask", limit: 1, default: 0, null: false, unsigned: true
    t.integer "recalculateMask", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stackCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "amount0", default: 0, null: false
    t.integer "amount1", default: 0, null: false
    t.integer "amount2", default: 0, null: false
    t.integer "base_amount0", default: 0, null: false
    t.integer "base_amount1", default: 0, null: false
    t.integer "base_amount2", default: 0, null: false
    t.integer "maxDuration", default: 0, null: false
    t.integer "remainTime", default: 0, null: false
    t.integer "remainCharges", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "character_banned", primary_key: ["guid", "bandate"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Ban List", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "bandate", default: 0, null: false, unsigned: true
    t.integer "unbandate", default: 0, null: false, unsigned: true
    t.string "bannedby", limit: 50, null: false
    t.string "banreason", null: false
    t.integer "active", limit: 1, default: 1, null: false, unsigned: true
  end

  create_table "character_battleground_random", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
  end

  create_table "character_brew_of_the_month", primary_key: "guid", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "lastEventId", default: 0, null: false, unsigned: true
  end

  create_table "character_declinedname", primary_key: "guid", id: { type: :integer, default: 0, comment: "Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "genitive", limit: 15, default: "", null: false
    t.string "dative", limit: 15, default: "", null: false
    t.string "accusative", limit: 15, default: "", null: false
    t.string "instrumental", limit: 15, default: "", null: false
    t.string "prepositional", limit: 15, default: "", null: false
  end

  create_table "character_entry_point", primary_key: "guid", id: { type: :integer, default: 0, comment: "Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.float "joinX", default: 0.0, null: false
    t.float "joinY", default: 0.0, null: false
    t.float "joinZ", default: 0.0, null: false
    t.float "joinO", default: 0.0, null: false
    t.integer "joinMapId", default: 0, null: false, comment: "Map Identifier", unsigned: true
    t.integer "taxiPath0", default: 0, null: false, unsigned: true
    t.integer "taxiPath1", default: 0, null: false, unsigned: true
    t.integer "mountSpell", default: 0, null: false, unsigned: true
  end

  create_table "character_equipmentsets", primary_key: "setguid", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false
    t.integer "setindex", limit: 1, default: 0, null: false, unsigned: true
    t.string "name", limit: 31, null: false
    t.string "iconname", limit: 100, null: false
    t.integer "ignore_mask", default: 0, null: false, unsigned: true
    t.integer "item0", default: 0, null: false, unsigned: true
    t.integer "item1", default: 0, null: false, unsigned: true
    t.integer "item2", default: 0, null: false, unsigned: true
    t.integer "item3", default: 0, null: false, unsigned: true
    t.integer "item4", default: 0, null: false, unsigned: true
    t.integer "item5", default: 0, null: false, unsigned: true
    t.integer "item6", default: 0, null: false, unsigned: true
    t.integer "item7", default: 0, null: false, unsigned: true
    t.integer "item8", default: 0, null: false, unsigned: true
    t.integer "item9", default: 0, null: false, unsigned: true
    t.integer "item10", default: 0, null: false, unsigned: true
    t.integer "item11", default: 0, null: false, unsigned: true
    t.integer "item12", default: 0, null: false, unsigned: true
    t.integer "item13", default: 0, null: false, unsigned: true
    t.integer "item14", default: 0, null: false, unsigned: true
    t.integer "item15", default: 0, null: false, unsigned: true
    t.integer "item16", default: 0, null: false, unsigned: true
    t.integer "item17", default: 0, null: false, unsigned: true
    t.integer "item18", default: 0, null: false, unsigned: true
    t.index ["guid", "setguid", "setindex"], name: "idx_set", unique: true
    t.index ["setindex"], name: "Idx_setindex"
  end

  create_table "character_gifts", primary_key: "item_guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "entry", default: 0, null: false, unsigned: true
    t.integer "flags", default: 0, null: false, unsigned: true
    t.index ["guid"], name: "idx_guid"
  end

  create_table "character_glyphs", primary_key: ["guid", "talentGroup"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", null: false, unsigned: true
    t.integer "talentGroup", limit: 1, default: 0, null: false, unsigned: true
    t.integer "glyph1", limit: 2, default: 0, unsigned: true
    t.integer "glyph2", limit: 2, default: 0, unsigned: true
    t.integer "glyph3", limit: 2, default: 0, unsigned: true
    t.integer "glyph4", limit: 2, default: 0, unsigned: true
    t.integer "glyph5", limit: 2, default: 0, unsigned: true
    t.integer "glyph6", limit: 2, default: 0, unsigned: true
  end

  create_table "character_homebind", primary_key: "guid", id: { type: :integer, default: 0, comment: "Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "mapId", limit: 2, default: 0, null: false, comment: "Map Identifier", unsigned: true
    t.integer "zoneId", limit: 2, default: 0, null: false, comment: "Zone Identifier", unsigned: true
    t.float "posX", default: 0.0, null: false
    t.float "posY", default: 0.0, null: false
    t.float "posZ", default: 0.0, null: false
  end

  create_table "character_instance", primary_key: ["guid", "instance"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "instance", default: 0, null: false, unsigned: true
    t.integer "permanent", limit: 1, default: 0, null: false, unsigned: true
    t.integer "extended", limit: 1, null: false, unsigned: true
    t.index ["instance"], name: "instance"
  end

  create_table "character_inventory", primary_key: "item", id: { type: :integer, default: 0, comment: "Item Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "bag", default: 0, null: false, unsigned: true
    t.integer "slot", limit: 1, default: 0, null: false, unsigned: true
    t.index ["guid", "bag", "slot"], name: "guid", unique: true
    t.index ["guid"], name: "idx_guid"
  end

  create_table "character_pet", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Pet System", force: :cascade do |t|
    t.integer "entry", default: 0, null: false, unsigned: true
    t.integer "owner", default: 0, null: false, unsigned: true
    t.integer "modelid", default: 0, unsigned: true
    t.integer "CreatedBySpell", default: 0, unsigned: true
    t.integer "PetType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "level", limit: 2, default: 1, null: false, unsigned: true
    t.integer "exp", default: 0, null: false, unsigned: true
    t.integer "Reactstate", limit: 1, default: 0, null: false, unsigned: true
    t.string "name", limit: 21, default: "Pet", null: false
    t.integer "renamed", limit: 1, default: 0, null: false, unsigned: true
    t.integer "slot", limit: 1, default: 0, null: false, unsigned: true
    t.integer "curhealth", default: 1, null: false, unsigned: true
    t.integer "curmana", default: 0, null: false, unsigned: true
    t.integer "curhappiness", default: 0, null: false, unsigned: true
    t.integer "savetime", default: 0, null: false, unsigned: true
    t.text "abdata"
    t.index ["owner"], name: "owner"
    t.index ["slot"], name: "idx_slot"
  end

  create_table "character_pet_declinedname", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "owner", default: 0, null: false, unsigned: true
    t.string "genitive", limit: 12, default: "", null: false
    t.string "dative", limit: 12, default: "", null: false
    t.string "accusative", limit: 12, default: "", null: false
    t.string "instrumental", limit: 12, default: "", null: false
    t.string "prepositional", limit: 12, default: "", null: false
    t.index ["owner"], name: "owner_key"
  end

  create_table "character_queststatus", primary_key: ["guid", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
    t.integer "status", limit: 1, default: 0, null: false, unsigned: true
    t.integer "explored", limit: 1, default: 0, null: false, unsigned: true
    t.integer "timer", default: 0, null: false, unsigned: true
    t.integer "mobcount1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "mobcount2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "mobcount3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "mobcount4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "itemcount1", limit: 2, default: 0, null: false, unsigned: true
    t.integer "itemcount2", limit: 2, default: 0, null: false, unsigned: true
    t.integer "itemcount3", limit: 2, default: 0, null: false, unsigned: true
    t.integer "itemcount4", limit: 2, default: 0, null: false, unsigned: true
    t.integer "itemcount5", limit: 2, default: 0, null: false, unsigned: true
    t.integer "itemcount6", limit: 2, default: 0, null: false, unsigned: true
    t.integer "playercount", limit: 2, default: 0, null: false, unsigned: true
  end

  create_table "character_queststatus_daily", primary_key: ["guid", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
    t.integer "time", default: 0, null: false, unsigned: true
    t.index ["guid"], name: "idx_guid"
  end

  create_table "character_queststatus_monthly", primary_key: ["guid", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
    t.index ["guid"], name: "idx_guid"
  end

  create_table "character_queststatus_rewarded", primary_key: ["guid", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
    t.integer "active", limit: 1, default: 1, null: false, unsigned: true
  end

  create_table "character_queststatus_seasonal", primary_key: ["guid", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
    t.integer "event", default: 0, null: false, comment: "Event Identifier", unsigned: true
    t.index ["guid"], name: "idx_guid"
  end

  create_table "character_queststatus_weekly", primary_key: ["guid", "quest"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "quest", default: 0, null: false, comment: "Quest Identifier", unsigned: true
    t.index ["guid"], name: "idx_guid"
  end

  create_table "character_reputation", primary_key: ["guid", "faction"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "faction", limit: 2, default: 0, null: false, unsigned: true
    t.integer "standing", default: 0, null: false
    t.integer "flags", limit: 2, default: 0, null: false, unsigned: true
  end

  create_table "character_settings", primary_key: ["guid", "source"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player Settings", force: :cascade do |t|
    t.integer "guid", null: false, unsigned: true
    t.string "source", limit: 40, null: false
    t.text "data"
  end

  create_table "character_skills", primary_key: ["guid", "skill"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "skill", limit: 2, null: false, unsigned: true
    t.integer "value", limit: 2, null: false, unsigned: true
    t.integer "max", limit: 2, null: false, unsigned: true
  end

  create_table "character_social", primary_key: ["guid", "friend", "flags"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Character Global Unique Identifier", unsigned: true
    t.integer "friend", default: 0, null: false, comment: "Friend Global Unique Identifier", unsigned: true
    t.integer "flags", limit: 1, default: 0, null: false, comment: "Friend Flags", unsigned: true
    t.string "note", limit: 48, default: "", null: false, comment: "Friend Note"
    t.index ["friend"], name: "friend"
  end

  create_table "character_spell", primary_key: ["guid", "spell"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "spell", default: 0, null: false, comment: "Spell Identifier", unsigned: true
    t.integer "specMask", limit: 1, default: 1, null: false, unsigned: true
  end

  create_table "character_spell_cooldown", primary_key: ["guid", "spell"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier, Low part", unsigned: true
    t.integer "spell", default: 0, null: false, comment: "Spell Identifier", unsigned: true
    t.integer "category", default: 0, unsigned: true
    t.integer "item", default: 0, null: false, comment: "Item Identifier", unsigned: true
    t.integer "time", default: 0, null: false, unsigned: true
    t.integer "needSend", limit: 1, default: 1, null: false, unsigned: true
  end

  create_table "character_stats", primary_key: "guid", id: { type: :integer, default: 0, comment: "Global Unique Identifier, Low part", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "maxhealth", default: 0, null: false, unsigned: true
    t.integer "maxpower1", default: 0, null: false, unsigned: true
    t.integer "maxpower2", default: 0, null: false, unsigned: true
    t.integer "maxpower3", default: 0, null: false, unsigned: true
    t.integer "maxpower4", default: 0, null: false, unsigned: true
    t.integer "maxpower5", default: 0, null: false, unsigned: true
    t.integer "maxpower6", default: 0, null: false, unsigned: true
    t.integer "maxpower7", default: 0, null: false, unsigned: true
    t.integer "strength", default: 0, null: false, unsigned: true
    t.integer "agility", default: 0, null: false, unsigned: true
    t.integer "stamina", default: 0, null: false, unsigned: true
    t.integer "intellect", default: 0, null: false, unsigned: true
    t.integer "spirit", default: 0, null: false, unsigned: true
    t.integer "armor", default: 0, null: false, unsigned: true
    t.integer "resHoly", default: 0, null: false, unsigned: true
    t.integer "resFire", default: 0, null: false, unsigned: true
    t.integer "resNature", default: 0, null: false, unsigned: true
    t.integer "resFrost", default: 0, null: false, unsigned: true
    t.integer "resShadow", default: 0, null: false, unsigned: true
    t.integer "resArcane", default: 0, null: false, unsigned: true
    t.float "blockPct", default: 0.0, null: false
    t.float "dodgePct", default: 0.0, null: false
    t.float "parryPct", default: 0.0, null: false
    t.float "critPct", default: 0.0, null: false
    t.float "rangedCritPct", default: 0.0, null: false
    t.float "spellCritPct", default: 0.0, null: false
    t.integer "attackPower", default: 0, null: false, unsigned: true
    t.integer "rangedAttackPower", default: 0, null: false, unsigned: true
    t.integer "spellPower", default: 0, null: false, unsigned: true
    t.integer "resilience", default: 0, null: false, unsigned: true
    t.check_constraint "(`blockPct` >= 0) and (`dodgePct` >= 0) and (`parryPct` >= 0) and (`critPct` >= 0) and (`rangedCritPct` >= 0) and (`spellCritPct` >= 0)", name: "character_stats_chk_1"
  end

  create_table "character_talent", primary_key: ["guid", "spell"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", null: false, unsigned: true
    t.integer "spell", null: false, unsigned: true
    t.integer "specMask", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "characters", primary_key: "guid", id: { type: :integer, default: 0, comment: "Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "account", default: 0, null: false, comment: "Account Identifier", unsigned: true
    t.string "name", limit: 12, null: false, collation: "utf8mb4_bin"
    t.integer "race", limit: 1, default: 0, null: false, unsigned: true
    t.integer "class", limit: 1, default: 0, null: false, unsigned: true
    t.integer "gender", limit: 1, default: 0, null: false, unsigned: true
    t.integer "level", limit: 1, default: 0, null: false, unsigned: true
    t.integer "xp", default: 0, null: false, unsigned: true
    t.integer "money", default: 0, null: false, unsigned: true
    t.integer "skin", limit: 1, default: 0, null: false, unsigned: true
    t.integer "face", limit: 1, default: 0, null: false, unsigned: true
    t.integer "hairStyle", limit: 1, default: 0, null: false, unsigned: true
    t.integer "hairColor", limit: 1, default: 0, null: false, unsigned: true
    t.integer "facialStyle", limit: 1, default: 0, null: false, unsigned: true
    t.integer "bankSlots", limit: 1, default: 0, null: false, unsigned: true
    t.integer "restState", limit: 1, default: 0, null: false, unsigned: true
    t.integer "playerFlags", default: 0, null: false, unsigned: true
    t.float "position_x", default: 0.0, null: false
    t.float "position_y", default: 0.0, null: false
    t.float "position_z", default: 0.0, null: false
    t.integer "map", limit: 2, default: 0, null: false, comment: "Map Identifier", unsigned: true
    t.integer "instance_id", default: 0, null: false, unsigned: true
    t.integer "instance_mode_mask", limit: 1, default: 0, null: false, unsigned: true
    t.float "orientation", default: 0.0, null: false
    t.text "taximask", null: false
    t.integer "online", limit: 1, default: 0, null: false, unsigned: true
    t.integer "cinematic", limit: 1, default: 0, null: false, unsigned: true
    t.integer "totaltime", default: 0, null: false, unsigned: true
    t.integer "leveltime", default: 0, null: false, unsigned: true
    t.integer "logout_time", default: 0, null: false, unsigned: true
    t.integer "is_logout_resting", limit: 1, default: 0, null: false, unsigned: true
    t.float "rest_bonus", default: 0.0, null: false
    t.integer "resettalents_cost", default: 0, null: false, unsigned: true
    t.integer "resettalents_time", default: 0, null: false, unsigned: true
    t.float "trans_x", default: 0.0, null: false
    t.float "trans_y", default: 0.0, null: false
    t.float "trans_z", default: 0.0, null: false
    t.float "trans_o", default: 0.0, null: false
    t.integer "transguid", default: 0
    t.integer "extra_flags", limit: 2, default: 0, null: false, unsigned: true
    t.integer "stable_slots", limit: 1, default: 0, null: false, unsigned: true
    t.integer "at_login", limit: 2, default: 0, null: false, unsigned: true
    t.integer "zone", limit: 2, default: 0, null: false, unsigned: true
    t.integer "death_expire_time", default: 0, null: false, unsigned: true
    t.text "taxi_path"
    t.integer "arenaPoints", default: 0, null: false, unsigned: true
    t.integer "totalHonorPoints", default: 0, null: false, unsigned: true
    t.integer "todayHonorPoints", default: 0, null: false, unsigned: true
    t.integer "yesterdayHonorPoints", default: 0, null: false, unsigned: true
    t.integer "totalKills", default: 0, null: false, unsigned: true
    t.integer "todayKills", limit: 2, default: 0, null: false, unsigned: true
    t.integer "yesterdayKills", limit: 2, default: 0, null: false, unsigned: true
    t.integer "chosenTitle", default: 0, null: false, unsigned: true
    t.bigint "knownCurrencies", default: 0, null: false, unsigned: true
    t.integer "watchedFaction", default: 0, null: false, unsigned: true
    t.integer "drunk", limit: 1, default: 0, null: false, unsigned: true
    t.integer "health", default: 0, null: false, unsigned: true
    t.integer "power1", default: 0, null: false, unsigned: true
    t.integer "power2", default: 0, null: false, unsigned: true
    t.integer "power3", default: 0, null: false, unsigned: true
    t.integer "power4", default: 0, null: false, unsigned: true
    t.integer "power5", default: 0, null: false, unsigned: true
    t.integer "power6", default: 0, null: false, unsigned: true
    t.integer "power7", default: 0, null: false, unsigned: true
    t.integer "latency", default: 0, unsigned: true
    t.integer "talentGroupsCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "activeTalentGroup", limit: 1, default: 0, null: false, unsigned: true
    t.text "exploredZones", size: :long
    t.text "equipmentCache", size: :long
    t.integer "ammoId", default: 0, null: false, unsigned: true
    t.text "knownTitles", size: :long
    t.integer "actionBars", limit: 1, default: 0, null: false, unsigned: true
    t.integer "grantableLevels", limit: 1, default: 0, null: false, unsigned: true
    t.integer "order", limit: 1
    t.timestamp "creation_date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "deleteInfos_Account", unsigned: true
    t.string "deleteInfos_Name", limit: 12
    t.integer "deleteDate", unsigned: true
    t.integer "innTriggerId", null: false, unsigned: true
    t.integer "extraBonusTalentCount", default: 0, null: false
    t.index ["account"], name: "idx_account"
    t.index ["name"], name: "idx_name"
    t.index ["online"], name: "idx_online"
  end

  create_table "corpse", primary_key: "guid", id: { type: :integer, default: 0, comment: "Character Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Death System", force: :cascade do |t|
    t.float "posX", default: 0.0, null: false
    t.float "posY", default: 0.0, null: false
    t.float "posZ", default: 0.0, null: false
    t.float "orientation", default: 0.0, null: false
    t.integer "mapId", limit: 2, default: 0, null: false, comment: "Map Identifier", unsigned: true
    t.integer "phaseMask", default: 1, null: false, unsigned: true
    t.integer "displayId", default: 0, null: false, unsigned: true
    t.text "itemCache", null: false
    t.integer "bytes1", default: 0, null: false, unsigned: true
    t.integer "bytes2", default: 0, null: false, unsigned: true
    t.integer "guildId", default: 0, null: false, unsigned: true
    t.integer "flags", limit: 1, default: 0, null: false, unsigned: true
    t.integer "dynFlags", limit: 1, default: 0, null: false, unsigned: true
    t.integer "time", default: 0, null: false, unsigned: true
    t.integer "corpseType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "instanceId", default: 0, null: false, comment: "Instance Identifier", unsigned: true
    t.index ["corpseType"], name: "idx_type"
    t.index ["instanceId"], name: "idx_instance"
    t.index ["time"], name: "idx_time"
  end

  create_table "creature_respawn", primary_key: ["guid", "instanceId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Grid Loading System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "respawnTime", default: 0, null: false, unsigned: true
    t.integer "mapId", limit: 2, default: 0, null: false, unsigned: true
    t.integer "instanceId", default: 0, null: false, comment: "Instance Identifier", unsigned: true
    t.index ["instanceId"], name: "idx_instance"
  end

  create_table "daily_players_reports", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "creation_time", default: 0, null: false, unsigned: true
    t.float "average", default: 0.0, null: false
    t.bigint "total_reports", default: 0, null: false, unsigned: true
    t.bigint "speed_reports", default: 0, null: false, unsigned: true
    t.bigint "fly_reports", default: 0, null: false, unsigned: true
    t.bigint "jump_reports", default: 0, null: false, unsigned: true
    t.bigint "waterwalk_reports", default: 0, null: false, unsigned: true
    t.bigint "teleportplane_reports", default: 0, null: false, unsigned: true
    t.bigint "climb_reports", default: 0, null: false, unsigned: true
    t.bigint "teleport_reports", default: 0, null: false, unsigned: true
    t.bigint "ignorecontrol_reports", default: 0, null: false, unsigned: true
    t.bigint "zaxis_reports", default: 0, null: false, unsigned: true
    t.bigint "antiswim_reports", default: 0, null: false, unsigned: true
    t.bigint "gravity_reports", default: 0, null: false, unsigned: true
    t.bigint "antiknockback_reports", default: 0, null: false, unsigned: true
    t.bigint "no_fall_damage_reports", default: 0, null: false, unsigned: true
    t.bigint "op_ack_hack_reports", default: 0, null: false, unsigned: true
    t.bigint "counter_measures_reports", default: 0, null: false, unsigned: true
  end

  create_table "game_event_condition_save", primary_key: ["eventEntry", "condition_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "eventEntry", limit: 1, null: false, unsigned: true
    t.integer "condition_id", default: 0, null: false, unsigned: true
    t.float "done", default: 0.0
  end

  create_table "game_event_save", primary_key: "eventEntry", id: { type: :integer, limit: 1, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "state", limit: 1, default: 1, null: false, unsigned: true
    t.integer "next_start", default: 0, null: false, unsigned: true
  end

  create_table "gameobject_respawn", primary_key: ["guid", "instanceId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Grid Loading System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "respawnTime", default: 0, null: false, unsigned: true
    t.integer "mapId", limit: 2, default: 0, null: false, unsigned: true
    t.integer "instanceId", default: 0, null: false, comment: "Instance Identifier", unsigned: true
    t.index ["instanceId"], name: "idx_instance"
  end

  create_table "gm_subsurvey", primary_key: ["surveyId", "questionId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "surveyId", null: false, unsigned: true, auto_increment: true
    t.integer "questionId", default: 0, null: false, unsigned: true
    t.integer "answer", default: 0, null: false, unsigned: true
    t.text "answerComment", null: false
  end

  create_table "gm_survey", primary_key: "surveyId", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "mainSurvey", default: 0, null: false, unsigned: true
    t.text "comment", size: :long, null: false
    t.integer "createTime", default: 0, null: false, unsigned: true
    t.integer "maxMMR", limit: 2, null: false
  end

  create_table "gm_ticket", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "type", limit: 1, default: 0, null: false, comment: "0 open, 1 closed, 2 character deleted", unsigned: true
    t.integer "playerGuid", default: 0, null: false, comment: "Global Unique Identifier of ticket creator", unsigned: true
    t.string "name", limit: 12, null: false, comment: "Name of ticket creator"
    t.text "description", null: false
    t.integer "createTime", default: 0, null: false, unsigned: true
    t.integer "mapId", limit: 2, default: 0, null: false, unsigned: true
    t.float "posX", default: 0.0, null: false
    t.float "posY", default: 0.0, null: false
    t.float "posZ", default: 0.0, null: false
    t.integer "lastModifiedTime", default: 0, null: false, unsigned: true
    t.integer "closedBy", default: 0, null: false, comment: "-1 Closed by Console, >0 GUID of GM"
    t.integer "assignedTo", default: 0, null: false, comment: "GUID of admin to whom ticket is assigned", unsigned: true
    t.text "comment", null: false
    t.text "response", null: false
    t.integer "completed", limit: 1, default: 0, null: false, unsigned: true
    t.integer "escalated", limit: 1, default: 0, null: false, unsigned: true
    t.integer "viewed", limit: 1, default: 0, null: false, unsigned: true
    t.integer "needMoreHelp", limit: 1, default: 0, null: false, unsigned: true
    t.integer "resolvedBy", default: 0, null: false, comment: "-1 Resolved by Console, >0 GUID of GM"
  end

  create_table "group_member", primary_key: "memberGuid", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Groups", force: :cascade do |t|
    t.integer "guid", null: false, unsigned: true
    t.integer "memberFlags", limit: 1, default: 0, null: false, unsigned: true
    t.integer "subgroup", limit: 1, default: 0, null: false, unsigned: true
    t.integer "roles", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "groups", primary_key: "guid", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Groups", force: :cascade do |t|
    t.integer "leaderGuid", null: false, unsigned: true
    t.integer "lootMethod", limit: 1, null: false, unsigned: true
    t.integer "looterGuid", null: false, unsigned: true
    t.integer "lootThreshold", limit: 1, null: false, unsigned: true
    t.bigint "icon1", null: false, unsigned: true
    t.bigint "icon2", null: false, unsigned: true
    t.bigint "icon3", null: false, unsigned: true
    t.bigint "icon4", null: false, unsigned: true
    t.bigint "icon5", null: false, unsigned: true
    t.bigint "icon6", null: false, unsigned: true
    t.bigint "icon7", null: false, unsigned: true
    t.bigint "icon8", null: false, unsigned: true
    t.integer "groupType", limit: 1, null: false, unsigned: true
    t.integer "difficulty", limit: 1, default: 0, null: false, unsigned: true
    t.integer "raidDifficulty", limit: 1, default: 0, null: false, unsigned: true
    t.integer "masterLooterGuid", null: false, unsigned: true
    t.index ["leaderGuid"], name: "leaderGuid"
  end

  create_table "guild", primary_key: "guildid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Guild System", force: :cascade do |t|
    t.string "name", limit: 24, default: "", null: false
    t.integer "leaderguid", default: 0, null: false, unsigned: true
    t.integer "EmblemStyle", limit: 1, default: 0, null: false, unsigned: true
    t.integer "EmblemColor", limit: 1, default: 0, null: false, unsigned: true
    t.integer "BorderStyle", limit: 1, default: 0, null: false, unsigned: true
    t.integer "BorderColor", limit: 1, default: 0, null: false, unsigned: true
    t.integer "BackgroundColor", limit: 1, default: 0, null: false, unsigned: true
    t.string "info", limit: 500, default: "", null: false
    t.string "motd", limit: 128, default: "", null: false
    t.integer "createdate", default: 0, null: false, unsigned: true
    t.bigint "BankMoney", default: 0, null: false, unsigned: true
  end

  create_table "guild_bank_eventlog", primary_key: ["guildid", "LogGuid", "TabId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guildid", default: 0, null: false, comment: "Guild Identificator", unsigned: true
    t.integer "LogGuid", default: 0, null: false, comment: "Log record identificator - auxiliary column", unsigned: true
    t.integer "TabId", limit: 1, default: 0, null: false, comment: "Guild bank TabId", unsigned: true
    t.integer "EventType", limit: 1, default: 0, null: false, comment: "Event type", unsigned: true
    t.integer "PlayerGuid", default: 0, null: false, unsigned: true
    t.integer "ItemOrMoney", default: 0, null: false, unsigned: true
    t.integer "ItemStackCount", limit: 2, default: 0, null: false, unsigned: true
    t.integer "DestTabId", limit: 1, default: 0, null: false, comment: "Destination Tab Id", unsigned: true
    t.integer "TimeStamp", default: 0, null: false, comment: "Event UNIX time", unsigned: true
    t.index ["LogGuid"], name: "Idx_LogGuid"
    t.index ["PlayerGuid"], name: "Idx_PlayerGuid"
    t.index ["guildid"], name: "guildid_key"
  end

  create_table "guild_bank_item", primary_key: ["guildid", "TabId", "SlotId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guildid", default: 0, null: false, unsigned: true
    t.integer "TabId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "SlotId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "item_guid", default: 0, null: false, unsigned: true
    t.index ["guildid"], name: "guildid_key"
    t.index ["item_guid"], name: "Idx_item_guid"
  end

  create_table "guild_bank_right", primary_key: ["guildid", "TabId", "rid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guildid", default: 0, null: false, unsigned: true
    t.integer "TabId", limit: 1, default: 0, null: false, unsigned: true
    t.integer "rid", limit: 1, default: 0, null: false, unsigned: true
    t.integer "gbright", limit: 1, default: 0, null: false, unsigned: true
    t.integer "SlotPerDay", default: 0, null: false, unsigned: true
    t.index ["guildid"], name: "guildid_key"
  end

  create_table "guild_bank_tab", primary_key: ["guildid", "TabId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guildid", default: 0, null: false, unsigned: true
    t.integer "TabId", limit: 1, default: 0, null: false, unsigned: true
    t.string "TabName", limit: 16, default: "", null: false
    t.string "TabIcon", limit: 100, default: "", null: false
    t.string "TabText", limit: 500
    t.index ["guildid"], name: "guildid_key"
  end

  create_table "guild_eventlog", primary_key: ["guildid", "LogGuid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Guild Eventlog", force: :cascade do |t|
    t.integer "guildid", null: false, comment: "Guild Identificator", unsigned: true
    t.integer "LogGuid", null: false, comment: "Log record identificator - auxiliary column", unsigned: true
    t.integer "EventType", limit: 1, null: false, comment: "Event type", unsigned: true
    t.integer "PlayerGuid1", null: false, comment: "Player 1", unsigned: true
    t.integer "PlayerGuid2", null: false, comment: "Player 2", unsigned: true
    t.integer "NewRank", limit: 1, null: false, comment: "New rank(in case promotion/demotion)", unsigned: true
    t.integer "TimeStamp", null: false, comment: "Event UNIX time", unsigned: true
    t.index ["LogGuid"], name: "Idx_LogGuid"
    t.index ["PlayerGuid1"], name: "Idx_PlayerGuid1"
    t.index ["PlayerGuid2"], name: "Idx_PlayerGuid2"
  end

  create_table "guild_member", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Guild System", force: :cascade do |t|
    t.integer "guildid", null: false, comment: "Guild Identificator", unsigned: true
    t.integer "guid", null: false, unsigned: true
    t.integer "rank", limit: 1, null: false, unsigned: true
    t.string "pnote", limit: 31, default: "", null: false
    t.string "offnote", limit: 31, default: "", null: false
    t.index ["guid"], name: "guid_key", unique: true
    t.index ["guildid", "rank"], name: "guildid_rank_key"
    t.index ["guildid"], name: "guildid_key"
  end

  create_table "guild_member_withdraw", primary_key: "guid", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Guild Member Daily Withdraws", force: :cascade do |t|
    t.integer "tab0", default: 0, null: false, unsigned: true
    t.integer "tab1", default: 0, null: false, unsigned: true
    t.integer "tab2", default: 0, null: false, unsigned: true
    t.integer "tab3", default: 0, null: false, unsigned: true
    t.integer "tab4", default: 0, null: false, unsigned: true
    t.integer "tab5", default: 0, null: false, unsigned: true
    t.integer "money", default: 0, null: false, unsigned: true
  end

  create_table "guild_rank", primary_key: ["guildid", "rid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Guild System", force: :cascade do |t|
    t.integer "guildid", default: 0, null: false, unsigned: true
    t.integer "rid", limit: 1, null: false, unsigned: true
    t.string "rname", limit: 20, default: "", null: false
    t.integer "rights", default: 0, unsigned: true
    t.integer "BankMoneyPerDay", default: 0, null: false, unsigned: true
    t.index ["rid"], name: "Idx_rid"
  end

  create_table "instance", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "map", limit: 2, default: 0, null: false, unsigned: true
    t.integer "resettime", default: 0, null: false, unsigned: true
    t.integer "difficulty", limit: 1, default: 0, null: false, unsigned: true
    t.integer "completedEncounters", default: 0, null: false, unsigned: true
    t.text "data", size: :tiny, null: false
    t.index ["difficulty"], name: "difficulty"
    t.index ["map"], name: "map"
    t.index ["resettime"], name: "resettime"
  end

  create_table "instance_reset", primary_key: ["mapid", "difficulty"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mapid", limit: 2, default: 0, null: false, unsigned: true
    t.integer "difficulty", limit: 1, default: 0, null: false, unsigned: true
    t.integer "resettime", default: 0, null: false, unsigned: true
    t.index ["difficulty"], name: "difficulty"
  end

  create_table "instance_saved_go_state_data", primary_key: ["id", "guid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", null: false, comment: "instance.id", unsigned: true
    t.integer "guid", null: false, comment: "gameobject.guid", unsigned: true
    t.integer "state", limit: 1, default: 0, comment: "gameobject.state", unsigned: true
  end

  create_table "item_instance", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Item System", force: :cascade do |t|
    t.integer "itemEntry", default: 0, unsigned: true
    t.integer "owner_guid", default: 0, null: false, unsigned: true
    t.integer "creatorGuid", default: 0, null: false, unsigned: true
    t.integer "giftCreatorGuid", default: 0, null: false, unsigned: true
    t.integer "count", default: 1, null: false, unsigned: true
    t.integer "duration", default: 0, null: false
    t.text "charges", size: :tiny
    t.integer "flags", default: 0, unsigned: true
    t.text "enchantments", null: false
    t.integer "randomPropertyId", limit: 2, default: 0, null: false
    t.integer "durability", limit: 2, default: 0, null: false, unsigned: true
    t.integer "playedTime", default: 0, null: false, unsigned: true
    t.text "text"
    t.index ["owner_guid"], name: "idx_owner_guid"
  end

  create_table "item_loot_storage", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "containerGUID", null: false, unsigned: true
    t.integer "itemid", null: false, unsigned: true
    t.integer "count", null: false, unsigned: true
    t.integer "item_index", default: 0, null: false, unsigned: true
    t.integer "randomPropertyId", null: false
    t.integer "randomSuffix", null: false, unsigned: true
    t.integer "follow_loot_rules", limit: 1, null: false, unsigned: true
    t.integer "freeforall", limit: 1, null: false, unsigned: true
    t.integer "is_blocked", limit: 1, null: false, unsigned: true
    t.integer "is_counted", limit: 1, null: false, unsigned: true
    t.integer "is_underthreshold", limit: 1, null: false, unsigned: true
    t.integer "needs_quest", limit: 1, null: false, unsigned: true
    t.integer "conditionLootId", default: 0, null: false
  end

  create_table "item_refund_instance", primary_key: ["item_guid", "player_guid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Item Refund System", force: :cascade do |t|
    t.integer "item_guid", null: false, comment: "Item GUID", unsigned: true
    t.integer "player_guid", null: false, comment: "Player GUID", unsigned: true
    t.integer "paidMoney", default: 0, null: false, unsigned: true
    t.integer "paidExtendedCost", limit: 2, default: 0, null: false, unsigned: true
  end

  create_table "item_soulbound_trade_data", primary_key: "itemGuid", id: { type: :integer, comment: "Item GUID", unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Item Refund System", force: :cascade do |t|
    t.text "allowedPlayers", null: false, comment: "Space separated GUID list of players who can receive this item in trade"
  end

  create_table "lag_reports", primary_key: "reportId", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, unsigned: true
    t.integer "lagType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "mapId", limit: 2, default: 0, null: false, unsigned: true
    t.float "posX", default: 0.0, null: false
    t.float "posY", default: 0.0, null: false
    t.float "posZ", default: 0.0, null: false
    t.integer "latency", default: 0, null: false, unsigned: true
    t.integer "createTime", default: 0, null: false, unsigned: true
  end

  create_table "lfg_data", primary_key: "guid", id: { type: :integer, default: 0, comment: "Global Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "LFG Data", force: :cascade do |t|
    t.integer "dungeon", default: 0, null: false, unsigned: true
    t.integer "state", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "log_arena_fights", primary_key: "fight_id", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "time", precision: nil, null: false
    t.integer "type", limit: 1, null: false, unsigned: true
    t.integer "duration", null: false, unsigned: true
    t.integer "winner", null: false, unsigned: true
    t.integer "loser", null: false, unsigned: true
    t.integer "winner_tr", limit: 2, null: false, unsigned: true
    t.integer "winner_mmr", limit: 2, null: false, unsigned: true
    t.integer "winner_tr_change", limit: 2, null: false
    t.integer "loser_tr", limit: 2, null: false, unsigned: true
    t.integer "loser_mmr", limit: 2, null: false, unsigned: true
    t.integer "loser_tr_change", limit: 2, null: false
    t.integer "currOnline", null: false, unsigned: true
  end

  create_table "log_arena_memberstats", primary_key: ["fight_id", "member_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "fight_id", null: false, unsigned: true
    t.integer "member_id", limit: 1, null: false, unsigned: true
    t.string "name", limit: 20, null: false
    t.integer "guid", null: false, unsigned: true
    t.integer "team", null: false, unsigned: true
    t.integer "account", null: false, unsigned: true
    t.string "ip", limit: 15, null: false
    t.integer "damage", null: false, unsigned: true
    t.integer "heal", null: false, unsigned: true
    t.integer "kblows", null: false, unsigned: true
  end

  create_table "log_encounter", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "time", precision: nil, null: false
    t.integer "map", limit: 2, null: false, unsigned: true
    t.integer "difficulty", limit: 1, null: false, unsigned: true
    t.integer "creditType", limit: 1, null: false, unsigned: true
    t.integer "creditEntry", null: false, unsigned: true
    t.text "playersInfo", null: false
  end

  create_table "log_money", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "sender_acc", null: false, unsigned: true
    t.integer "sender_guid", null: false, unsigned: true
    t.text "sender_name", null: false
    t.text "sender_ip", null: false
    t.integer "receiver_acc", null: false, unsigned: true
    t.text "receiver_name", null: false
    t.bigint "money", null: false, unsigned: true
    t.text "topic", null: false
    t.datetime "date", precision: nil, null: false
    t.integer "type", limit: 1, null: false, comment: "1=COD,2=AH,3=GB DEPOSIT,4=GB WITHDRAW,5=MAIL,6=TRADE"
  end

  create_table "mail", id: { type: :integer, default: 0, comment: "Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Mail System", force: :cascade do |t|
    t.integer "messageType", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stationery", limit: 1, default: 41, null: false
    t.integer "mailTemplateId", limit: 2, default: 0, null: false, unsigned: true
    t.integer "sender", default: 0, null: false, comment: "Character Global Unique Identifier", unsigned: true
    t.integer "receiver", default: 0, null: false, comment: "Character Global Unique Identifier", unsigned: true
    t.text "subject", size: :long
    t.text "body", size: :long
    t.integer "has_items", limit: 1, default: 0, null: false, unsigned: true
    t.integer "expire_time", default: 0, null: false, unsigned: true
    t.integer "deliver_time", default: 0, null: false, unsigned: true
    t.integer "money", default: 0, null: false, unsigned: true
    t.integer "cod", default: 0, null: false, unsigned: true
    t.integer "checked", limit: 1, default: 0, null: false, unsigned: true
    t.index ["receiver"], name: "idx_receiver"
  end

  create_table "mail_items", primary_key: "item_guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mail_id", default: 0, null: false, unsigned: true
    t.integer "receiver", default: 0, null: false, comment: "Character Global Unique Identifier", unsigned: true
    t.index ["mail_id"], name: "idx_mail_id"
    t.index ["receiver"], name: "idx_receiver"
  end

  create_table "mail_server_character", primary_key: ["guid", "mailId"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", null: false, unsigned: true
    t.integer "mailId", null: false, unsigned: true
  end

  create_table "mail_server_template", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "reqLevel", limit: 1, default: 0, null: false, unsigned: true
    t.integer "reqPlayTime", default: 0, null: false, unsigned: true
    t.integer "moneyA", default: 0, null: false, unsigned: true
    t.integer "moneyH", default: 0, null: false, unsigned: true
    t.integer "itemA", default: 0, null: false, unsigned: true
    t.integer "itemCountA", default: 0, null: false, unsigned: true
    t.integer "itemH", default: 0, null: false, unsigned: true
    t.integer "itemCountH", default: 0, null: false, unsigned: true
    t.text "subject", null: false
    t.text "body", null: false
    t.integer "active", limit: 1, default: 1, null: false, unsigned: true
  end

  create_table "pet_aura", primary_key: ["guid", "casterGuid", "spell", "effectMask"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Pet System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.bigint "casterGuid", default: 0, null: false, comment: "Full Global Unique Identifier", unsigned: true
    t.integer "spell", default: 0, null: false, unsigned: true
    t.integer "effectMask", limit: 1, default: 0, null: false, unsigned: true
    t.integer "recalculateMask", limit: 1, default: 0, null: false, unsigned: true
    t.integer "stackCount", limit: 1, default: 1, null: false, unsigned: true
    t.integer "amount0"
    t.integer "amount1"
    t.integer "amount2"
    t.integer "base_amount0"
    t.integer "base_amount1"
    t.integer "base_amount2"
    t.integer "maxDuration", default: 0, null: false
    t.integer "remainTime", default: 0, null: false
    t.integer "remainCharges", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "pet_spell", primary_key: ["guid", "spell"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Pet System", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "spell", default: 0, null: false, comment: "Spell Identifier", unsigned: true
    t.integer "active", limit: 1, default: 0, null: false, unsigned: true
  end

  create_table "pet_spell_cooldown", primary_key: ["guid", "spell"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier, Low part", unsigned: true
    t.integer "spell", default: 0, null: false, comment: "Spell Identifier", unsigned: true
    t.integer "category", default: 0, unsigned: true
    t.integer "time", default: 0, null: false, unsigned: true
  end

  create_table "petition", primary_key: ["ownerguid", "type"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Guild System", force: :cascade do |t|
    t.integer "ownerguid", null: false, unsigned: true
    t.integer "petitionguid", default: 0, unsigned: true
    t.string "name", limit: 24, null: false
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.index ["ownerguid", "petitionguid"], name: "index_ownerguid_petitionguid", unique: true
  end

  create_table "petition_sign", primary_key: ["petitionguid", "playerguid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Guild System", force: :cascade do |t|
    t.integer "ownerguid", null: false, unsigned: true
    t.integer "petitionguid", default: 0, null: false, unsigned: true
    t.integer "playerguid", default: 0, null: false, unsigned: true
    t.integer "player_account", default: 0, null: false, unsigned: true
    t.integer "type", limit: 1, default: 0, null: false, unsigned: true
    t.index ["ownerguid"], name: "Idx_ownerguid"
    t.index ["playerguid"], name: "Idx_playerguid"
  end

  create_table "players_reports_status", primary_key: "guid", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "creation_time", default: 0, null: false, unsigned: true
    t.float "average", default: 0.0, null: false
    t.bigint "total_reports", default: 0, null: false, unsigned: true
    t.bigint "speed_reports", default: 0, null: false, unsigned: true
    t.bigint "fly_reports", default: 0, null: false, unsigned: true
    t.bigint "jump_reports", default: 0, null: false, unsigned: true
    t.bigint "waterwalk_reports", default: 0, null: false, unsigned: true
    t.bigint "teleportplane_reports", default: 0, null: false, unsigned: true
    t.bigint "climb_reports", default: 0, null: false, unsigned: true
    t.bigint "teleport_reports", default: 0, null: false, unsigned: true
    t.bigint "ignorecontrol_reports", default: 0, null: false, unsigned: true
    t.bigint "zaxis_reports", default: 0, null: false, unsigned: true
    t.bigint "antiswim_reports", default: 0, null: false, unsigned: true
    t.bigint "gravity_reports", default: 0, null: false, unsigned: true
    t.bigint "antiknockback_reports", default: 0, null: false, unsigned: true
    t.bigint "no_fall_damage_reports", default: 0, null: false, unsigned: true
    t.bigint "op_ack_hack_reports", default: 0, null: false, unsigned: true
    t.bigint "counter_measures_reports", default: 0, null: false, unsigned: true
  end

  create_table "pool_quest_save", primary_key: ["pool_id", "quest_id"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "pool_id", default: 0, null: false, unsigned: true
    t.integer "quest_id", default: 0, null: false, unsigned: true
  end

  create_table "profanity_name", primary_key: "name", id: { type: :string, limit: 12, collation: "utf8mb4_bin" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
  end

  create_table "pvpstats_battlegrounds", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "winner_faction", limit: 1, null: false
    t.integer "bracket_id", limit: 1, null: false, unsigned: true
    t.integer "type", limit: 1, null: false, unsigned: true
    t.datetime "date", precision: nil, null: false
  end

  create_table "pvpstats_players", primary_key: ["battleground_id", "character_guid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "battleground_id", null: false, unsigned: true
    t.integer "character_guid", null: false, unsigned: true
    t.binary "winner", limit: 1, null: false
    t.integer "score_killing_blows", unsigned: true
    t.integer "score_deaths", unsigned: true
    t.integer "score_honorable_kills", unsigned: true
    t.integer "score_bonus_honor", unsigned: true
    t.integer "score_damage_done", unsigned: true
    t.integer "score_healing_done", unsigned: true
    t.integer "attr_1", default: 0, unsigned: true
    t.integer "attr_2", default: 0, unsigned: true
    t.integer "attr_3", default: 0, unsigned: true
    t.integer "attr_4", default: 0, unsigned: true
    t.integer "attr_5", default: 0, unsigned: true
  end

  create_table "quest_tracker", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", default: 0, unsigned: true
    t.integer "character_guid", default: 0, null: false, unsigned: true
    t.datetime "quest_accept_time", precision: nil, null: false
    t.datetime "quest_complete_time", precision: nil
    t.datetime "quest_abandon_time", precision: nil
    t.integer "completed_by_gm", limit: 1, default: 0, null: false
    t.string "core_hash", limit: 120, default: "0", null: false
    t.string "core_revision", limit: 120, default: "0", null: false
  end

  create_table "recovery_item", primary_key: "Id", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "Guid", default: 0, null: false, unsigned: true
    t.integer "ItemEntry", default: 0, unsigned: true
    t.integer "Count", default: 0, null: false, unsigned: true
    t.index ["Guid"], name: "idx_guid"
  end

  create_table "reserved_name", primary_key: "name", id: { type: :string, limit: 12, collation: "utf8mb4_bin" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Player Reserved Names", force: :cascade do |t|
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

  create_table "warden_action", primary_key: "wardenId", id: { type: :integer, limit: 2, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "action", limit: 1, unsigned: true
  end

  create_table "worldstates", primary_key: "entry", id: { type: :integer, default: 0, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Variable Saves", force: :cascade do |t|
    t.integer "value", default: 0, null: false, unsigned: true
    t.text "comment", size: :tiny
  end
end
