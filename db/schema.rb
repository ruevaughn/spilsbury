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

ActiveRecord::Schema.define(version: 20140703183805) do

  create_table "admins", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",     default: 0,  null: false
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree

  create_table "funerals", force: true do |t|
    t.text     "location"
    t.datetime "service_begins"
    t.text     "visitation"
    t.text     "interment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guestbook_signatures", force: true do |t|
    t.integer  "guestbook_id"
    t.string   "name"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guestbook_signatures", ["guestbook_id"], name: "index_guestbook_signatures_on_guestbook_id", using: :btree

  create_table "guestbooks", force: true do |t|
    t.integer  "obituary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "obituaries", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.text     "description"
    t.date     "born_date"
    t.date     "death_date"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "obituary_image"
  end

  create_table "staffs", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.string   "job_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
