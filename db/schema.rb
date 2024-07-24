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

ActiveRecord::Schema[7.2].define(version: 2024_07_24_141736) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accouns", force: :cascade do |t|
    t.bigint "supplier_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_accouns_on_supplier_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "supplier_id", null: false
    t.integer "account_number"
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "catagorization", id: false, force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "catogory_id"
  end

  create_table "commentables", force: :cascade do |t|
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_commentables_on_comment_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments_posts", id: false, force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "comment_id", null: false
    t.index ["comment_id", "post_id"], name: "index_comments_posts_on_comment_id_and_post_id"
    t.index ["post_id", "comment_id"], name: "index_comments_posts_on_post_id_and_comment_id"
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

  create_table "feedbacks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "credit_rating"
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
  end

  create_table "pp", force: :cascade do |t|
    t.string "size"
  end

  create_table "records", force: :cascade do |t|
    t.bigint "accoun_id"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accoun_id"], name: "index_records_on_accoun_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.index ["email"], name: "unique_emails", unique: true
    t.index ["name"], name: "index_users_on_name"
  end
end
