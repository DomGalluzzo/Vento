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

ActiveRecord::Schema.define(version: 2021_03_10_181318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cancellations", force: :cascade do |t|
    t.integer "budget"
    t.boolean "terrorism"
    t.string "location"
    t.boolean "rain"
    t.boolean "flood"
    t.boolean "loss"
    t.boolean "weather"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contract_plans", force: :cascade do |t|
    t.bigint "contract_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "plannable_type", null: false
    t.bigint "plannable_id", null: false
    t.index ["contract_id"], name: "index_contract_plans_on_contract_id"
    t.index ["plannable_type", "plannable_id"], name: "index_contract_plans_on_plannable_type_and_plannable_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "total_cost"
    t.bigint "festival_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["festival_id"], name: "index_contracts_on_festival_id"
  end

  create_table "festivals", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "genre"
    t.string "name"
    t.string "venue"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["user_id"], name: "index_festivals_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.integer "amount_cents", default: 0, null: false
    t.string "checkout_session_id"
    t.bigint "user_id", null: false
    t.bigint "contract_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_orders_on_contract_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "public_injuries", force: :cascade do |t|
    t.integer "liability"
    t.integer "daily"
    t.integer "total"
    t.boolean "usa"
    t.boolean "dangerous"
    t.boolean "sub"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "contract_plans", "contracts"
  add_foreign_key "contracts", "festivals"
  add_foreign_key "festivals", "users"
  add_foreign_key "orders", "contracts"
  add_foreign_key "orders", "users"
end
