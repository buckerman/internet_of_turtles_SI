# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_24_141807) do

  create_table "turtles", force: :cascade do |t|
    t.integer "turtle_id"
    t.string "integer"
    t.string "name"
    t.string "sex"
    t.string "species"
    t.datetime "fixation_date"
    t.datetime "birthday"
    t.integer "researcher_id"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "sex"
    t.integer "photo_id"
    t.date "registration_date"
    t.text "description"
    t.string "occupation"
    t.string "institution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
