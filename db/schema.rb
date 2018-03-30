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

ActiveRecord::Schema.define(version: 20180330051842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follower_posters", force: :cascade do |t|
    t.bigint "follower_id"
    t.bigint "poster_id"
    t.index ["follower_id"], name: "index_follower_posters_on_follower_id"
    t.index ["poster_id"], name: "index_follower_posters_on_poster_id"
  end

  create_table "followers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liker_posts", id: false, force: :cascade do |t|
    t.bigint "follower_id"
    t.bigint "post_id"
    t.index ["follower_id"], name: "index_liker_posts_on_follower_id"
    t.index ["post_id"], name: "index_liker_posts_on_post_id"
  end

  create_table "likers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "national_parks", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
