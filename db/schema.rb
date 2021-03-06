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

ActiveRecord::Schema.define(version: 20160504151511) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.text     "ingredients"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "section_id"
    t.string   "item_picture"
  end

  add_index "items", ["section_id"], name: "index_items_on_section_id"
  add_index "items", ["user_id"], name: "index_items_on_user_id"

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.boolean  "isOpen"
    t.string   "category"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "phone_number"
    t.string   "email"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "twitter"
    t.string   "restaurant_picture"
    t.string   "city"
    t.text     "description"
  end

  add_index "restaurants", ["user_id"], name: "index_restaurants_on_user_id"

  create_table "schedules", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time     "monStart"
    t.time     "monEnd"
    t.boolean  "monOpen"
    t.time     "tueStart"
    t.time     "tueEnd"
    t.boolean  "tueOpen"
    t.time     "wedStart"
    t.time     "wedEnd"
    t.boolean  "wedOpen"
    t.time     "thuStart"
    t.time     "thuEnd"
    t.boolean  "thuOpen"
    t.time     "friStart"
    t.time     "friEnd"
    t.boolean  "friOpen"
    t.integer  "user_id"
    t.time     "satStart"
    t.time     "satEnd"
    t.boolean  "satOpen"
    t.time     "sunStart"
    t.time     "sunEnd"
    t.boolean  "sunOpen"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sections", ["user_id"], name: "index_sections_on_user_id"

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
    t.string   "user_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["user_name"], name: "index_users_on_user_name", unique: true

end
