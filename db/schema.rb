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

ActiveRecord::Schema.define(version: 20141225181037) do

  create_table "high_scores", force: true do |t|
    t.string   "game"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "my_column"
    t.integer  "puppa",      default: 0, null: false
  end

  create_table "letture", force: true do |t|
    t.date     "data"
    t.integer  "consumofascia1"
    t.integer  "consumofascia2"
    t.integer  "consumofascia3"
    t.integer  "consumofascia1periodoprecedente"
    t.integer  "consumofascia2periodoprecedente"
    t.integer  "consumofascia3periodoprecedente"
    t.integer  "produzionefascia1"
    t.integer  "produzionefascia2"
    t.integer  "produzionefascia3"
    t.integer  "immissionefascia1"
    t.integer  "immissionefascia2"
    t.integer  "immissionefascia3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prezzi", force: true do |t|
    t.date     "datainiziovalidita"
    t.date     "datafinevalidita"
    t.float    "prezzofascia1",      limit: 24
    t.float    "prezzofascia2",      limit: 24
    t.float    "prezzofascia3",      limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
