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

ActiveRecord::Schema.define(version: 20150523153042) do

  create_table "campingsites", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.text     "features"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campingsites_owners", id: false, force: :cascade do |t|
    t.integer "campingsite_id", null: false
    t.integer "owner_id",       null: false
  end

  add_index "campingsites_owners", ["campingsite_id", "owner_id"], name: "index_campingsites_owners_on_campingsite_id_and_owner_id"
  add_index "campingsites_owners", ["owner_id", "campingsite_id"], name: "index_campingsites_owners_on_owner_id_and_campingsite_id"

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phonenumber"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pitches", force: :cascade do |t|
    t.integer  "number"
    t.float    "size"
    t.boolean  "used"
    t.text     "features"
    t.integer  "campingsite_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "pitches", ["campingsite_id"], name: "index_pitches_on_campingsite_id"

end
