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

ActiveRecord::Schema.define(version: 2019_03_21_124555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "country_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries_target_groups", force: :cascade do |t|
    t.bigint "country_id"
    t.bigint "target_group_id"
    t.index ["country_id", "target_group_id"], name: "index_countries_target_groups_on_country_and_target_group", unique: true
    t.index ["country_id"], name: "index_countries_target_groups_on_country_id"
    t.index ["target_group_id"], name: "index_countries_target_groups_on_target_group_id"
  end

  create_table "location_groups", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.integer "panel_provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_groups_locations", id: false, force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "location_group_id", null: false
    t.index ["location_group_id"], name: "index_location_groups_locations_on_location_group_id"
    t.index ["location_id", "location_group_id"], name: "index_locations_location_groups_on_location_and_location_group", unique: true
    t.index ["location_id"], name: "index_location_groups_locations_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "external_id"
    t.string "secret_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "panel_providers", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "target_groups", force: :cascade do |t|
    t.string "name"
    t.integer "external_id"
    t.integer "parent_id"
    t.string "secret_code"
    t.integer "panel_provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "countries_target_groups", "countries"
  add_foreign_key "countries_target_groups", "target_groups"
end
