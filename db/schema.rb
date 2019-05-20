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

ActiveRecord::Schema.define(version: 20190415015921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "exercises_muscles", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "muscle_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exercise_id"], name: "index_exercises_muscles_on_exercise_id", using: :btree
    t.index ["muscle_id"], name: "index_exercises_muscles_on_muscle_id", using: :btree
  end

  create_table "muscle_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "muscles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "muscle_group_id"
    t.index ["muscle_group_id"], name: "index_muscles_on_muscle_group_id", using: :btree
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "following_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["follower_id"], name: "index_relationships_on_follower_id", using: :btree
    t.index ["following_id"], name: "index_relationships_on_following_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "auth_token",             default: ""
    t.index ["auth_token"], name: "index_users_on_auth_token", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "workouts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_workouts_on_user_id", using: :btree
  end

  create_table "workouts_exercises", force: :cascade do |t|
    t.integer  "workout_id"
    t.integer  "exercise_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "selection_type"
    t.index ["exercise_id"], name: "index_workouts_exercises_on_exercise_id", using: :btree
    t.index ["workout_id"], name: "index_workouts_exercises_on_workout_id", using: :btree
  end

  add_foreign_key "exercises_muscles", "exercises"
  add_foreign_key "exercises_muscles", "muscles"
  add_foreign_key "muscles", "muscle_groups"
  add_foreign_key "relationships", "users", column: "follower_id"
  add_foreign_key "relationships", "users", column: "following_id"
  add_foreign_key "workouts", "users"
  add_foreign_key "workouts_exercises", "exercises"
  add_foreign_key "workouts_exercises", "workouts"
end
