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

ActiveRecord::Schema.define(version: 2022_08_15_031522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capital_accounts", force: :cascade do |t|
    t.float "initial_balance"
    t.float "current_balance"
    t.integer "user_id"
    t.integer "deal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "capital_distributions", force: :cascade do |t|
    t.float "return_of_capital"
    t.bigint "capital_account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["capital_account_id"], name: "index_capital_distributions_on_capital_account_id"
  end

  create_table "captial_contributions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "original_contribution_amount"
    t.integer "current_capital_balance"
    t.integer "deal_id"
    t.integer "capital_account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deals", force: :cascade do |t|
    t.string "photo"
    t.string "map"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "oa"
    t.string "pro_forma"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.float "total_capital_call"
    t.date "closing_date"
    t.integer "user_id"
    t.float "promote_equity_percentage"
    t.float "investor_equity_percentage"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "state"
    t.integer "zip"
    t.integer "deal_id"
    t.integer "unit_count"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "mobile_phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "capital_distributions", "capital_accounts"
end
