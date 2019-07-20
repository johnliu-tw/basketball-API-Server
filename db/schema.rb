# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_05_080012) do

  create_table "counters", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "legend", limit: 45
    t.string "craw_type", limit: 45
    t.string "count", limit: 45, default: "1"
    t.string "page", limit: 45, default: "97"
  end

  create_table "nba_player_data", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "player_id"
    t.integer "team_id"
    t.string "season", limit: 45
    t.integer "age"
    t.integer "g"
    t.integer "gs"
    t.float "mp"
    t.float "fg"
    t.float "fga"
    t.float "fgp"
    t.float "3p"
    t.float "3pa"
    t.float "3pp"
    t.float "ft"
    t.float "fta"
    t.float "ftp"
    t.float "orb"
    t.float "drb"
    t.float "trb"
    t.float "ast"
    t.float "stl"
    t.float "blk"
    t.float "tov"
    t.float "pf"
    t.float "pts"
    t.index ["id"], name: "id_UNIQUE", unique: true
    t.index ["player_id"], name: "index_nba_player_data_on_player_id"
  end

  create_table "nba_players", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 155
    t.string "height", limit: 45
    t.integer "weight"
    t.datetime "birth"
    t.string "school", limit: 155
    t.integer "start_year"
    t.integer "end_year"
    t.string "draft_team", limit: 60
    t.string "draft_pick", limit: 60
    t.integer "draft_year"
    t.string "position", limit: 15
    t.string "country", limit: 60
    t.index ["id"], name: "id_UNIQUE", unique: true
  end

  create_table "nba_team_data", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "team_id"
    t.string "season", limit: 45
    t.integer "win"
    t.integer "lost"
    t.float "srs"
    t.integer "top_player_id"
  end

  create_table "nba_teams", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "s_name", limit: 45
    t.integer "seasons"
    t.integer "total_win"
    t.integer "total_lost"
    t.integer "playoff_count"
    t.integer "championships"
  end

  create_table "sbl_player_data", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "player_id", limit: 45
    t.string "season", limit: 45
    t.string "team_id", limit: 45
    t.integer "g"
    t.integer "gs"
    t.float "sp"
    t.float "fg"
    t.float "fga"
    t.float "fgp"
    t.float "3p"
    t.float "3pa"
    t.float "3pp"
    t.float "ft"
    t.float "fta"
    t.float "ftp"
    t.float "orb"
    t.float "drb"
    t.float "trb"
    t.float "ast"
    t.float "stl"
    t.float "blk"
    t.float "tov"
    t.float "pf"
    t.float "pts"
  end

  create_table "sbl_players", id: :string, limit: 45, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 45
    t.integer "height"
    t.integer "weight"
    t.datetime "birth"
    t.string "position", limit: 45
  end

  create_table "sbl_team_data", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "team_id", limit: 45
    t.string "season", limit: 45
    t.integer "win"
    t.integer "lost"
    t.integer "ranking"
  end

  create_table "sbl_teams", id: :string, limit: 45, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 45
    t.integer "total_win"
    t.integer "total_lost"
    t.integer "playoff_count"
    t.integer "championships"
  end

end
