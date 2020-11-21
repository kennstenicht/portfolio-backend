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

ActiveRecord::Schema.define(version: 2018_04_02_115158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "custom_fields", force: :cascade do |t|
    t.string "key"
    t.jsonb "value", default: {}
    t.string "field_type"
    t.jsonb "description", default: {}
    t.bigint "page_id"
    t.bigint "project_id"
    t.index ["page_id"], name: "index_custom_fields_on_page_id"
    t.index ["project_id"], name: "index_custom_fields_on_project_id"
  end

  create_table "pages", force: :cascade do |t|
    t.jsonb "content", default: {}
    t.jsonb "meta_title", default: {}
    t.jsonb "meta_description", default: {}
    t.integer "position"
    t.string "slug"
    t.jsonb "title", default: {}, null: false
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.jsonb "content", default: {}
    t.jsonb "excerpt", default: {}
    t.jsonb "facts", default: {}
    t.jsonb "meta_description", default: {}
    t.jsonb "meta_title", default: {}
    t.integer "position"
    t.jsonb "role", default: {}
    t.string "slug"
    t.jsonb "subtitle", default: {}, null: false
    t.jsonb "title", default: {}, null: false
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
