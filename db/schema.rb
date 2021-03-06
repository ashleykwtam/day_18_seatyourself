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

ActiveRecord::Schema.define(version: 20140627021455) do

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "bio_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.datetime "start_time"
    t.integer  "restaurant_id"
    t.integer  "customer_id"
    t.integer  "party_size",    default: 1
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cuisine"
    t.string   "location"
    t.integer  "phone_number"
    t.time     "hours_open"
    t.integer  "max_occupancy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

end
