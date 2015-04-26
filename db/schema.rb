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

ActiveRecord::Schema.define(version: 20150426014057) do

  create_table "addresses", force: :cascade do |t|
    t.integer "number"
    t.string  "street"
    t.integer "person_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "quantity"
    t.integer "seller_id"
    t.integer "product_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "value"
    t.integer "game_id"
    t.integer "player_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "name"
  end

end
