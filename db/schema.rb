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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140305205141) do
=======
ActiveRecord::Schema.define(version: 20140305225700) do
>>>>>>> 9e3a7a50dfa23e4edc0140866959e8b909e5c4e1

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "prices", force: true do |t|
    t.integer  "price"
    t.string   "measure"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.integer  "store_id"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "brand"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "crypted_password",             null: false
    t.string   "salt",                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree

end
