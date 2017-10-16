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

ActiveRecord::Schema.define(version: 20171009192859) do

  create_table "career_has_subjects", force: :cascade do |t|
    t.string   "typology"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "career_id"
    t.integer  "subject_id"
  end

  add_index "career_has_subjects", ["career_id"], name: "index_career_has_subjects_on_career_id"
  add_index "career_has_subjects", ["subject_id"], name: "index_career_has_subjects_on_subject_id"

  create_table "careers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mallas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "career_id"
  end

  add_index "mallas", ["career_id"], name: "index_mallas_on_career_id"

  create_table "requisites", force: :cascade do |t|
    t.integer  "follower_id", null: false
    t.integer  "followee_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "semester_has_subjects", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "semester_id"
    t.integer  "subject_id"
  end

  add_index "semester_has_subjects", ["semester_id"], name: "index_semester_has_subjects_on_semester_id"
  add_index "semester_has_subjects", ["subject_id"], name: "index_semester_has_subjects_on_subject_id"

  create_table "semesters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "number"
    t.integer  "malla_id"
  end

  add_index "semesters", ["malla_id"], name: "index_semesters_on_malla_id"

  create_table "subjects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "credits"
  end

end
