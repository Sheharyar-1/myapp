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

ActiveRecord::Schema[7.2].define(version: 2024_07_29_115439) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.bigint "supplier_id"
    t.string "account_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.bigint "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_admins_on_manager_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "physician_id"
    t.bigint "patient_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billings", force: :cascade do |t|
    t.integer "rate"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_billings_on_shop_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.bigint "supplier_id", null: false
    t.bigint "author_id", null: false
    t.boolean "out_of_print", default: false
    t.integer "year_published"
    t.decimal "price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["supplier_id"], name: "index_books_on_supplier_id"
  end

  create_table "books_orders", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "order_id", null: false
    t.index ["book_id", "order_id"], name: "index_books_orders_on_book_id_and_order_id"
    t.index ["order_id", "book_id"], name: "index_books_orders_on_order_id_and_book_id"
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

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "orders_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "product_id", null: false
    t.index ["customer_id", "product_id"], name: "index_customers_products_on_customer_id_and_product_id"
    t.index ["product_id", "customer_id"], name: "index_customers_products_on_product_id_and_customer_id"
  end

  create_table "dels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.bigint "account_id"
    t.integer "credit_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_histories_on_account_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "director"
    t.text "description"
    t.date "watched_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "novels", force: :cascade do |t|
    t.string "name"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_novels_on_author_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "name"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable"
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

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "detail"
    t.bigint "customer_id"
    t.bigint "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["customer_id"], name: "index_reviews_on_customer_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
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

  add_foreign_key "admins", "admins", column: "manager_id"
  add_foreign_key "books", "authors"
  add_foreign_key "books", "suppliers"
  add_foreign_key "orders", "customers"
end
