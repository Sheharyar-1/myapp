# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_07_23_130946) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catagorization", id: false, force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "catogory_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.index ["number"], name: "index_comments_on_number"
  end

  create_table "console", primary_key: ["name", "version"], force: :cascade do |t|
    t.string "name", null: false
    t.integer "version", null: false
    t.text "description"
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.bigint "pro_id", null: false
    t.integer "customer_id"
  end

  create_table "dels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "page_count"
    t.string "address"
  end

  create_table "pp", force: :cascade do |t|
    t.string "size"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.index ["email"], name: "unique_emails", unique: true
    t.index ["name"], name: "index_users_on_name"
  end
end
