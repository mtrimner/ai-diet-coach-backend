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

ActiveRecord::Schema.define(version: 2021_01_13_192414) do

  create_table "diets", force: :cascade do |t|
    t.string "goal"
    t.date "start_date"
    t.date "end_date"
    t.integer "target_weight"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_diets_on_user_id"
  end

  create_table "user_weights", force: :cascade do |t|
    t.integer "weight"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "diet_id", null: false
    t.index ["diet_id"], name: "index_user_weights_on_diet_id"
    t.index ["user_id"], name: "index_user_weights_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date_of_birth"
    t.string "sex"
    t.integer "height"
  end

  add_foreign_key "diets", "users"
  add_foreign_key "user_weights", "diets"
  add_foreign_key "user_weights", "users"
end
