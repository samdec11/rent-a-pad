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

ActiveRecord::Schema.define(version: 20150424024118) do

  create_table "hoods", force: true do |t|
    t.string   "name"
    t.text     "image"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hoods_users", id: false, force: true do |t|
    t.integer "hood_id", null: false
    t.integer "user_id", null: false
  end

  create_table "messages", force: true do |t|
    t.string   "subject"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "password_digest"
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.string   "email"
    t.text     "image"
    t.text     "description"
    t.string   "occupation"
    t.integer  "sociability"
    t.integer  "sleep_hours"
    t.boolean  "is_smoker"
    t.string   "cooks"
    t.string   "pets"
    t.text     "roommate"
    t.decimal  "max_rent",        precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
