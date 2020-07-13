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

ActiveRecord::Schema.define(version: 2020_07_13_005225) do

  create_table "care_givers", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "care_giver_id"
    t.integer "daily_activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["care_giver_id"], name: "index_comments_on_care_giver_id"
    t.index ["daily_activity_id"], name: "index_comments_on_daily_activity_id"
  end

  create_table "daily_activities", force: :cascade do |t|
    t.datetime "date"
    t.string "location"
    t.string "daily_log"
    t.integer "care_giver_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["care_giver_id"], name: "index_daily_activities_on_care_giver_id"
    t.index ["child_id"], name: "index_daily_activities_on_child_id"
  end

end
