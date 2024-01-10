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

ActiveRecord::Schema[7.1].define(version: 2024_01_10_115811) do
  create_table "archers", force: :cascade do |t|
    t.string "path"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "classe"
    t.integer "exp"
    t.string "gender"
    t.string "image"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "choices", force: :cascade do |t|
    t.string "respons"
    t.integer "id_question"
    t.integer "choice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classes", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enigmas", force: :cascade do |t|
    t.string "question"
    t.string "correct_response"
    t.string "response1"
    t.string "response2"
    t.string "response3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "exp"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "id_user"
    t.integer "id_save"
    t.integer "id_item"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "categorie"
    t.integer "stats"
  end

  create_table "mages", force: :cascade do |t|
    t.string "path"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "health_points"
    t.string "avatar"
  end

  create_table "parties", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_parties_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.integer "choice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "exp"
  end

  create_table "quests", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "exp"
    t.integer "reward_1_id"
    t.integer "reward_2_id"
    t.integer "reward_3_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reward_1_id"], name: "index_quests_on_reward_1_id"
    t.index ["reward_2_id"], name: "index_quests_on_reward_2_id"
    t.index ["reward_3_id"], name: "index_quests_on_reward_3_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "attack"
    t.integer "defense"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warriors", force: :cascade do |t|
    t.string "path"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "parties", "users"
  add_foreign_key "quests", "rewards", column: "reward_1_id"
  add_foreign_key "quests", "rewards", column: "reward_2_id"
  add_foreign_key "quests", "rewards", column: "reward_3_id"
end
