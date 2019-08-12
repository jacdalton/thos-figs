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

ActiveRecord::Schema.define(version: 2019_08_12_071300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anime_figs", force: :cascade do |t|
    t.string "character"
    t.string "series"
    t.bigint "fig_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fig_type_id"], name: "index_anime_figs_on_fig_type_id"
  end

  create_table "fig_types", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "loc_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "otaku_figs", force: :cascade do |t|
    t.datetime "purchased_on"
    t.bigint "otaku_id"
    t.bigint "anime_fig_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_fig_id"], name: "index_otaku_figs_on_anime_fig_id"
    t.index ["location_id"], name: "index_otaku_figs_on_location_id"
    t.index ["otaku_id"], name: "index_otaku_figs_on_otaku_id"
  end

  create_table "otakus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "anime_figs", "fig_types"
  add_foreign_key "otaku_figs", "anime_figs"
  add_foreign_key "otaku_figs", "locations"
  add_foreign_key "otaku_figs", "otakus"
end
