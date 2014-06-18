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

ActiveRecord::Schema.define(version: 20140618030416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: true do |t|
    t.integer  "bid"
    t.string   "beer_name"
    t.float    "beer_abv"
    t.string   "beer_description"
    t.string   "beer_style"
    t.boolean  "is_in_production"
    t.integer  "rating_count"
    t.float    "rating_score"
    t.integer  "brewery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "breweries", force: true do |t|
    t.integer  "brewery_id"
    t.string   "brewery_name"
    t.string   "brewery_city"
    t.string   "brewery_state"
    t.string   "country_name"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checkins", force: true do |t|
    t.integer  "checkin_id"
    t.datetime "created_at"
    t.float    "rating_score"
    t.integer  "uid"
    t.integer  "bid"
    t.integer  "brewery_id"
    t.integer  "venue_id"
    t.string   "venue_city"
    t.string   "venue_state"
    t.float    "lat"
    t.float    "lng"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "uid"
    t.string   "user_name"
    t.string   "location"
    t.date     "user_birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
