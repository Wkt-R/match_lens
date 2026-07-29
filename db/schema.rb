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

ActiveRecord::Schema[8.1].define(version: 2026_07_29_074215) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "competitions", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.integer "external_id"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "away_score"
    t.bigint "away_team_id", null: false
    t.datetime "created_at", null: false
    t.integer "external_id"
    t.integer "home_score"
    t.bigint "home_team_id", null: false
    t.datetime "kickoff_at"
    t.integer "matchday"
    t.bigint "season_id", null: false
    t.string "status"
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_matches_on_away_team_id"
    t.index ["external_id"], name: "index_matches_on_external_id", unique: true
    t.index ["home_team_id"], name: "index_matches_on_home_team_id"
    t.index ["season_id"], name: "index_matches_on_season_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.bigint "competition_id", null: false
    t.datetime "created_at", null: false
    t.date "end_date"
    t.date "start_date"
    t.datetime "updated_at", null: false
    t.string "year"
    t.index ["competition_id"], name: "index_seasons_on_competition_id"
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "crest_url"
    t.integer "external_id"
    t.integer "founder_year"
    t.string "name"
    t.string "short_name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "matches", "seasons"
  add_foreign_key "matches", "teams", column: "away_team_id"
  add_foreign_key "matches", "teams", column: "home_team_id"
  add_foreign_key "seasons", "competitions"
end
