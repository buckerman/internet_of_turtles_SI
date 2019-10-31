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

ActiveRecord::Schema.define(version: 2019_09_23_215445) do

  create_table "collected_data", force: :cascade do |t|
    t.integer "turtle_id"
    t.float "temperature"
    t.float "deep"
    t.float "light"
    t.float "latitude"
    t.float "longitude"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turtle_id"], name: "index_collected_data_on_turtle_id"
  end

  create_table "deep_data", force: :cascade do |t|
    t.integer "turtle_id"
    t.float "temperature"
    t.float "deep"
    t.float "light"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turtle_id"], name: "index_deep_data_on_turtle_id"
  end

  create_table "turtles", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "specie"
    t.datetime "module_installation_date"
    t.date "estimated_birthday"
    t.integer "user_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_turtles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "photo_id"
    t.string "gender"
    t.date "birthday"
    t.integer "telephone"
    t.boolean "researcher"
    t.string "career"
    t.string "institution"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
