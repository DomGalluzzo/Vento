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

ActiveRecord::Schema.define(version: 2021_03_01_212425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "festival_policies", force: :cascade do |t|
    t.boolean "status"
    t.bigint "festival_id", null: false
    t.bigint "insurance_policy_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["festival_id"], name: "index_festival_policies_on_festival_id"
    t.index ["insurance_policy_id"], name: "index_festival_policies_on_insurance_policy_id"
  end

  create_table "festivals", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.float "latitude"
    t.float "longitude"
    t.string "festival_type"
    t.string "name"
    t.string "venue"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_festivals_on_user_id"
  end

  create_table "insurance_policies", force: :cascade do |t|
    t.integer "cost"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.string "type"
    t.bigint "insurance_policy_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["insurance_policy_id"], name: "index_questions_on_insurance_policy_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_user_answers_on_question_id"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "festival_policies", "festivals"
  add_foreign_key "festival_policies", "insurance_policies"
  add_foreign_key "festivals", "users"
  add_foreign_key "questions", "insurance_policies"
  add_foreign_key "user_answers", "questions"
  add_foreign_key "user_answers", "users"
end
