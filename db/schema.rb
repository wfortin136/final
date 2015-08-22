# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "fightcards", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "promotion"
    t.date   "date"
  end

  create_table "fighters", force: :cascade do |t|
    t.string  "name"
    t.integer "wins"
    t.integer "losses"
    t.integer "draws"
    t.integer "nc"
    t.string  "picture"
  end

  create_table "fights", force: :cascade do |t|
    t.integer "fight_num"
    t.integer "card_level"
    t.integer "rounds_sch"
    t.string  "method"
    t.integer "scorecard_id"
    t.integer "fightcard_id"
    t.integer "fighttime"
    t.integer "championship"
    t.integer "weightclass_id"
  end

  add_index "fights", ["fightcard_id"], name: "index_fights_on_fightcard_id"
  add_index "fights", ["scorecard_id"], name: "index_fights_on_scorecard_id"
  add_index "fights", ["weightclass_id"], name: "index_fights_on_weightclass_id"

  create_table "judges", force: :cascade do |t|
    t.string "name"
  end

  create_table "judgescores", force: :cascade do |t|
    t.integer "judge_id"
    t.integer "r1_1"
    t.integer "r2_1"
    t.integer "r3_1"
    t.integer "r4_1"
    t.integer "r5_1"
    t.integer "r1_2"
    t.integer "r2_2"
    t.integer "r3_2"
    t.integer "r4_2"
    t.integer "r5_2"
    t.integer "t1"
    t.integer "t2"
  end

  add_index "judgescores", ["judge_id"], name: "index_judgescores_on_judge_id"

  create_table "scorecards", force: :cascade do |t|
    t.integer "fighter_1_id"
    t.integer "fighter_2_id"
    t.integer "j_1_score_id"
    t.integer "j_2_score_id"
    t.integer "j_3_score_id"
    t.string  "pic"
  end

  add_index "scorecards", ["fighter_1_id"], name: "index_scorecards_on_fighter_1_id"
  add_index "scorecards", ["fighter_2_id"], name: "index_scorecards_on_fighter_2_id"
  add_index "scorecards", ["j_1_score_id"], name: "index_scorecards_on_j_1_score_id"
  add_index "scorecards", ["j_2_score_id"], name: "index_scorecards_on_j_2_score_id"
  add_index "scorecards", ["j_3_score_id"], name: "index_scorecards_on_j_3_score_id"

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.boolean "admin",           default: false
    t.string  "password_digest"
  end

  create_table "weightclasses", force: :cascade do |t|
    t.string  "name"
    t.integer "weight"
  end

end
