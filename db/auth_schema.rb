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
  create_table "account", id: { type: :integer, comment: "Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Account System", force: :cascade do |t|
    t.string "username", limit: 32, default: "", null: false
    t.binary "salt", limit: 32, null: false
    t.binary "verifier", limit: 32, null: false
    t.binary "session_key", limit: 40
    t.binary "totp_secret", limit: 128
    t.string "email", default: "", null: false
    t.string "reg_mail", default: "", null: false
    t.timestamp "joindate", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "last_ip", limit: 15, default: "127.0.0.1", null: false
    t.string "last_attempt_ip", limit: 15, default: "127.0.0.1", null: false
    t.integer "failed_logins", default: 0, null: false, unsigned: true
    t.integer "locked", limit: 1, default: 0, null: false, unsigned: true
    t.string "lock_country", limit: 2, default: "00", null: false
    t.timestamp "last_login"
    t.integer "online", default: 0, null: false, unsigned: true
    t.integer "expansion", limit: 1, default: 2, null: false, unsigned: true
    t.bigint "mutetime", default: 0, null: false
    t.string "mutereason", default: "", null: false
    t.string "muteby", limit: 50, default: "", null: false
    t.integer "locale", limit: 1, default: 0, null: false, unsigned: true
    t.string "os", limit: 3, default: "", null: false
    t.integer "recruiter", default: 0, null: false, unsigned: true
    t.integer "totaltime", default: 0, null: false, unsigned: true
    t.index ["username"], name: "idx_username", unique: true
  end

  create_table "account_access", primary_key: ["id", "RealmID"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "id", null: false, unsigned: true
    t.integer "gmlevel", limit: 1, null: false, unsigned: true
    t.integer "RealmID", default: -1, null: false
    t.string "comment", default: ""
  end

  create_table "account_banned", primary_key: ["id", "bandate"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Ban List", force: :cascade do |t|
    t.integer "id", default: 0, null: false, comment: "Account id", unsigned: true
    t.integer "bandate", default: 0, null: false, unsigned: true
    t.integer "unbandate", default: 0, null: false, unsigned: true
    t.string "bannedby", limit: 50, null: false
    t.string "banreason", null: false
    t.integer "active", limit: 1, default: 1, null: false, unsigned: true
  end

  create_table "account_muted", primary_key: ["guid", "mutedate"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "mute List", force: :cascade do |t|
    t.integer "guid", default: 0, null: false, comment: "Global Unique Identifier", unsigned: true
    t.integer "mutedate", default: 0, null: false, unsigned: true
    t.integer "mutetime", default: 0, null: false, unsigned: true
    t.string "mutedby", limit: 50, null: false
    t.string "mutereason", null: false
  end

  create_table "autobroadcast", primary_key: ["id", "realmid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "realmid", default: -1, null: false
    t.integer "id", limit: 1, null: false, unsigned: true, auto_increment: true
    t.integer "weight", limit: 1, default: 1, unsigned: true
    t.text "text", size: :long, null: false
  end

  create_table "build_info", primary_key: "build", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "majorVersion"
    t.integer "minorVersion"
    t.integer "bugfixVersion"
    t.string "hotfixVersion", limit: 3
    t.string "winAuthSeed", limit: 32
    t.string "win64AuthSeed", limit: 32
    t.string "mac64AuthSeed", limit: 32
    t.string "winChecksumSeed", limit: 40
    t.string "macChecksumSeed", limit: 40
  end

  create_table "ip_banned", primary_key: ["ip", "bandate"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Banned IPs", force: :cascade do |t|
    t.string "ip", limit: 15, default: "127.0.0.1", null: false
    t.integer "bandate", null: false, unsigned: true
    t.integer "unbandate", null: false, unsigned: true
    t.string "bannedby", limit: 50, default: "[Console]", null: false
    t.string "banreason", default: "no reason", null: false
  end

  create_table "logs", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "time", null: false, unsigned: true
    t.integer "realm", null: false, unsigned: true
    t.string "type", limit: 250, null: false
    t.integer "level", limit: 1, default: 0, null: false, unsigned: true
    t.text "string"
  end

  create_table "logs_ip_actions", id: { type: :integer, comment: "Unique Identifier", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Used to log ips of individual actions", force: :cascade do |t|
    t.integer "account_id", null: false, comment: "Account ID", unsigned: true
    t.integer "character_guid", null: false, comment: "Character Guid", unsigned: true
    t.integer "type", limit: 1, null: false, unsigned: true
    t.string "ip", limit: 15, default: "127.0.0.1", null: false
    t.text "systemnote", comment: "Notes inserted by system"
    t.integer "unixtime", null: false, comment: "Unixtime", unsigned: true
    t.timestamp "time", default: -> { "CURRENT_TIMESTAMP" }, null: false, comment: "Timestamp"
    t.text "comment", comment: "Allows users to add a comment"
  end

  create_table "motd", primary_key: "realmid", id: :integer, default: nil, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "text", size: :long
  end

  create_table "realmcharacters", primary_key: ["realmid", "acctid"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Realm Character Tracker", force: :cascade do |t|
    t.integer "realmid", default: 0, null: false, unsigned: true
    t.integer "acctid", null: false, unsigned: true
    t.integer "numchars", limit: 1, default: 0, null: false, unsigned: true
    t.index ["acctid"], name: "acctid"
  end

  create_table "realmlist", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Realm System", force: :cascade do |t|
    t.string "name", limit: 32, default: "", null: false
    t.string "address", default: "127.0.0.1", null: false
    t.string "localAddress", default: "127.0.0.1", null: false
    t.string "localSubnetMask", default: "255.255.255.0", null: false
    t.integer "port", limit: 2, default: 8085, null: false, unsigned: true
    t.integer "icon", limit: 1, default: 0, null: false, unsigned: true
    t.integer "flag", limit: 1, default: 2, null: false, unsigned: true
    t.integer "timezone", limit: 1, default: 0, null: false, unsigned: true
    t.integer "allowedSecurityLevel", limit: 1, default: 0, null: false, unsigned: true
    t.float "population", default: 0.0, null: false
    t.integer "gamebuild", default: 12340, null: false, unsigned: true
    t.index ["name"], name: "idx_name", unique: true
    t.check_constraint "`population` >= 0", name: "realmlist_chk_1"
  end

  create_table "secret_digest", id: { type: :integer, unsigned: true, default: nil }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "digest", limit: 100, null: false
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

  create_table "uptime", primary_key: ["realmid", "starttime"], charset: "utf8mb4", collation: "utf8mb4_unicode_ci", comment: "Uptime system", force: :cascade do |t|
    t.integer "realmid", null: false, unsigned: true
    t.integer "starttime", default: 0, null: false, unsigned: true
    t.integer "uptime", default: 0, null: false, unsigned: true
    t.integer "maxplayers", limit: 2, default: 0, null: false, unsigned: true
    t.string "revision", default: "AzerothCore", null: false
  end
end
