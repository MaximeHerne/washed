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

ActiveRecord::Schema.define(version: 20141209165401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: true do |t|
    t.string   "formula"
    t.string   "temperature"
    t.integer  "price"
    t.datetime "pickup_start_date"
    t.datetime "pickup_end_date"
    t.datetime "delivery_start_date"
    t.datetime "delivery_end_date"
    t.integer  "user_id"
    t.integer  "washer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "review_id"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree
  add_index "orders", ["washer_id"], name: "index_orders_on_washer_id", using: :btree

  create_table "reviews", force: true do |t|
    t.integer  "rating"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address"
    t.integer  "street_number"
    t.string   "route"
    t.string   "locality"
    t.string   "administrative_area_level_1"
    t.string   "postal_code"
    t.string   "country"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "washers", force: true do |t|
    t.string   "email",                       default: "", null: false
    t.string   "encrypted_password",          default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address"
    t.integer  "street_number"
    t.string   "route"
    t.string   "locality"
    t.string   "administrative_area_level_1"
    t.string   "postal_code"
    t.string   "country"
  end

  add_index "washers", ["email"], name: "index_washers_on_email", unique: true, using: :btree
  add_index "washers", ["reset_password_token"], name: "index_washers_on_reset_password_token", unique: true, using: :btree

end
