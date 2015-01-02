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

ActiveRecord::Schema.define(version: 20150102003226) do

  create_table "bathrooms", force: :cascade do |t|
    t.float    "lat",            limit: 24
    t.float    "lng",            limit: 24
    t.string   "address",        limit: 255
    t.string   "city",           limit: 255
    t.string   "country",        limit: 255
    t.boolean  "accessibility",  limit: 1
    t.boolean  "free",           limit: 1
    t.string   "free_condition", limit: 255
    t.string   "situation",      limit: 255
    t.boolean  "poo",            limit: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "username",       limit: 255
    t.integer  "facebook_id",    limit: 8
    t.text     "facebook_token", limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "bathroom_id", limit: 4
    t.integer  "client_id",   limit: 4
    t.integer  "rating",      limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "ratings", ["bathroom_id"], name: "index_ratings_on_bathroom_id", using: :btree
  add_index "ratings", ["client_id"], name: "index_ratings_on_client_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "bathroom_id", limit: 4
    t.integer  "client_id",   limit: 4
    t.text     "review",      limit: 65535
    t.string   "condition",   limit: 255
    t.string   "photo",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "reviews", ["bathroom_id"], name: "index_reviews_on_bathroom_id", using: :btree
  add_index "reviews", ["client_id"], name: "index_reviews_on_client_id", using: :btree

  add_foreign_key "ratings", "bathrooms"
  add_foreign_key "ratings", "clients"
  add_foreign_key "reviews", "bathrooms"
  add_foreign_key "reviews", "clients"
end
