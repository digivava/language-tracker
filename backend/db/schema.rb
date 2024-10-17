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

ActiveRecord::Schema[7.2].define(version: 2024_10_17_210257) do
  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.string "language"
    t.float "number"
    t.string "units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "activity"
    t.integer "user_id", null: false
    t.integer "language_id", null: false
    t.index ["language_id"], name: "index_records_on_language_id"
    t.index ["user_id"], name: "index_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_languages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "language_id", null: false
    t.index ["language_id"], name: "index_users_languages_on_language_id"
    t.index ["user_id"], name: "index_users_languages_on_user_id"
  end

  add_foreign_key "records", "languages"
  add_foreign_key "records", "users"
  add_foreign_key "users_languages", "languages"
  add_foreign_key "users_languages", "users"
end
