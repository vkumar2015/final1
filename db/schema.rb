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

ActiveRecord::Schema.define(version: 20140603041735) do

  create_table "doctors", force: true do |t|
    t.string  "dname"
    t.string  "dprofile"
    t.integer "dage"
    t.string  "dphotourl"
    t.string  "dspecialization1"
    t.string  "dspecialization2"
    t.text    "dwork"
    t.text    "deducation"
    t.integer "page_count"
  end

  create_table "hospitals", force: true do |t|
    t.string  "hospname"
    t.string  "hcountry"
    t.string  "hstate"
    t.string  "hzip"
    t.string  "hcity"
    t.string  "hphotourl"
    t.integer "hyear"
    t.string  "haddress"
    t.string  "htype"
    t.string  "hphone"
    t.string  "hemail"
    t.string  "hurl"
    t.string  "hspecialization1"
    t.string  "hspecialization2"
    t.integer "hbeds"
    t.integer "page_count"
  end

  create_table "insurancehosps", force: true do |t|
    t.integer "insu_id"
    t.integer "hosp_id"
  end

  create_table "insurances", force: true do |t|
    t.string "insuname"
    t.string "insuurl"
  end

  create_table "treatmenthosps", force: true do |t|
    t.integer "treat_id"
    t.integer "doc_id"
    t.integer "hosp_id"
  end

  create_table "treatments", force: true do |t|
    t.string "treatname"
    t.string "treaturl"
  end

  create_table "ureviewdocs", force: true do |t|
    t.integer  "user_id"
    t.integer  "doc_id"
    t.integer  "doc_urating"
    t.text     "doc_ucontent"
    t.string   "doc_uphoto1"
    t.integer  "doc_ureco"
    t.datetime "created_at"
  end

  create_table "ureviewhosps", force: true do |t|
    t.integer  "user_id"
    t.integer  "hosp_id"
    t.integer  "hosp_urating"
    t.text     "hosp_ucontent"
    t.string   "hosp_uphoto1"
    t.integer  "hosp_ureco"
    t.datetime "created_at"
  end

  create_table "users", force: true do |t|
    t.string "uname"
    t.string "upassword"
    t.string "uemail"
    t.string "ucountry"
  end

end
