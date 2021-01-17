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

ActiveRecord::Schema.define(version: 2021_01_17_194747) do

  create_table "diets", force: :cascade do |t|
    t.string "goal"
    t.date "start_date"
    t.date "end_date"
    t.integer "target_weight"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "activity_level"
    t.integer "meals_per_day"
    t.index ["user_id"], name: "index_diets_on_user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "serving_size"
    t.integer "adjusted_serving_size"
    t.integer "protein"
    t.integer "adjusted_protein"
    t.integer "protein_consumed"
    t.integer "carbs"
    t.integer "adjusted_carbs"
    t.integer "carbs_consumed"
    t.integer "fat"
    t.integer "adjusted_fat"
    t.integer "fat_consumed"
    t.integer "calories"
    t.integer "adjusted_calories"
    t.integer "calories_consumed"
    t.integer "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_id"], name: "index_foods_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "calories"
    t.integer "carbs"
    t.integer "protein"
    t.integer "fat"
    t.index ["user_id"], name: "index_meals_on_user_id"
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
  add_foreign_key "foods", "meals"
  add_foreign_key "meals", "users"
  add_foreign_key "user_weights", "diets"
  add_foreign_key "user_weights", "users"
end
