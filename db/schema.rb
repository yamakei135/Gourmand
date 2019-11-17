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

ActiveRecord::Schema.define(version: 2019_11_14_150040) do

  create_table "posts", force: :cascade do |t|
    t.string "posted_by", null: false
    t.string "restaurant_name", null: false
    t.text "restaurant_adress"
    t.text "restaurant_adress_url"
    t.text "post_image_name"
    t.integer "cost"
    t.integer "rating", null: false
    t.text "comment", limit: 140, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end