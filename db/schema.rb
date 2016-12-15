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

ActiveRecord::Schema.define(version: 20161215122354) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "will_id"
    t.string   "bank"
    t.string   "type"
    t.string   "heir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["will_id"], name: "index_accounts_on_will_id"
  end

  create_table "funerals", force: :cascade do |t|
    t.integer  "will_id"
    t.string   "religion"
    t.string   "format"
    t.text     "participants"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["will_id"], name: "index_funerals_on_will_id"
  end

  create_table "insurance_policies", force: :cascade do |t|
    t.integer  "will_id"
    t.string   "insurer"
    t.string   "type"
    t.integer  "amount"
    t.string   "heir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["will_id"], name: "index_insurance_policies_on_will_id"
  end

  create_table "jewelries", force: :cascade do |t|
    t.integer  "will_id"
    t.integer  "quantity"
    t.integer  "amount"
    t.string   "heir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["will_id"], name: "index_jewelries_on_will_id"
  end

  create_table "motors", force: :cascade do |t|
    t.integer  "will_id"
    t.integer  "quantity"
    t.integer  "amount"
    t.string   "heir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["will_id"], name: "index_motors_on_will_id"
  end

  create_table "pensions", force: :cascade do |t|
    t.integer  "will_id"
    t.integer  "amount"
    t.string   "heir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["will_id"], name: "index_pensions_on_will_id"
  end

  create_table "private_shares", force: :cascade do |t|
    t.integer  "will_id"
    t.string   "company"
    t.integer  "stock"
    t.integer  "amount"
    t.string   "heir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["will_id"], name: "index_private_shares_on_will_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "will_id"
    t.string   "address"
    t.string   "heir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["will_id"], name: "index_properties_on_will_id"
  end

  create_table "stock_portfolios", force: :cascade do |t|
    t.integer  "will_id"
    t.string   "bank"
    t.string   "heir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["will_id"], name: "index_stock_portfolios_on_will_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wills", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wills_on_user_id"
  end

end