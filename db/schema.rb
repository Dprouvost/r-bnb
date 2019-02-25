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

ActiveRecord::Schema.define(version: 2019_02_25_165626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "band_name"
    t.string "photo_url"
    t.string "music_url"
    t.integer "price"
    t.string "location"
    t.integer "area_range"
    t.text "description"
    t.string "category"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_artists_on_profile_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "artist_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_bookings_on_artist_id"
    t.index ["profile_id"], name: "index_bookings_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_profiles_on_users_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.bigint "artist_id"
    t.bigint "profile_id"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_reviews_on_artist_id"
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["profile_id"], name: "index_reviews_on_profile_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_schedules_on_artist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "artists", "profiles"
  add_foreign_key "bookings", "artists"
  add_foreign_key "bookings", "profiles"
  add_foreign_key "profiles", "users", column: "users_id"
  add_foreign_key "reviews", "artists"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "profiles"
  add_foreign_key "schedules", "artists"
end
