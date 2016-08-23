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

ActiveRecord::Schema.define(version: 20160822061642) do

  create_table "products", force: :cascade do |t|
    t.string   "fueltype"
    t.integer  "drivedist"
    t.integer  "drivetime"
    t.integer  "idletime"
    t.integer  "heattime"
    t.integer  "avgsp"
    t.integer  "maxsp"
    t.integer  "lowspt"
    t.integer  "mlowspt"
    t.integer  "midspt"
    t.integer  "mhighspt"
    t.integer  "highspt"
    t.integer  "netdrivet"
    t.integer  "acc7to10"
    t.integer  "acc11to13"
    t.integer  "acc14to17"
    t.integer  "acc18"
    t.integer  "dacc21"
    t.integer  "dacc18to20"
    t.integer  "dacc14to17"
    t.integer  "dacc11to13"
    t.integer  "dacc7to10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
