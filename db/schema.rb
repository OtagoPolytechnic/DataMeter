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

ActiveRecord::Schema.define(version: 20160308004020) do

  create_table "campuslist", force: :cascade do |t|
    t.string   "Hostname",       limit: 40
    t.string   "Username",       limit: 25
    t.string   "RemotePath",     limit: 50
    t.string   "LocalPath",      limit: 50
    t.string   "Password",       limit: 25
    t.string   "DeviceLocation", limit: 25
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "meters", force: :cascade do |t|
    t.string   "Date",       limit: 25
    t.string   "DeviceName", limit: 25
    t.decimal  "Surge1",                precision: 10
    t.decimal  "Surge2",                precision: 10
    t.decimal  "Surge3",                precision: 10
    t.decimal  "Total",                 precision: 10
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 25
    t.string   "password",   limit: 40
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
