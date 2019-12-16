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

ActiveRecord::Schema.define(version: 2019_12_16_111231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artwork_categories", force: :cascade do |t|
    t.bigint "artwork_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_artwork_categories_on_artwork_id"
    t.index ["category_id"], name: "index_artwork_categories_on_category_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "photo"
    t.string "title"
    t.date "date_of_creation"
    t.text "description"
    t.bigint "artist_id"
    t.bigint "viewing_location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "medium"
    t.string "category"
    t.string "related_artworks"
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
    t.index ["viewing_location_id"], name: "index_artworks_on_viewing_location_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "artwork_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_comments_on_artwork_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "viewing_location_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
    t.index ["viewing_location_id"], name: "index_favorites_on_viewing_location_id"
  end

  create_table "saved_artworks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "artwork_id"
    t.string "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_saved_artworks_on_artwork_id"
    t.index ["user_id"], name: "index_saved_artworks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "viewing_locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "artwork_categories", "artworks"
  add_foreign_key "artwork_categories", "categories"
  add_foreign_key "artworks", "artists"
  add_foreign_key "artworks", "viewing_locations"
  add_foreign_key "comments", "artworks"
  add_foreign_key "comments", "users"
  add_foreign_key "favorites", "users"
  add_foreign_key "favorites", "viewing_locations"
  add_foreign_key "saved_artworks", "artworks"
  add_foreign_key "saved_artworks", "users"
end
