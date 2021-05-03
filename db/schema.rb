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

ActiveRecord::Schema.define(version: 2021_05_01_150746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_spends", force: :cascade do |t|
    t.string "title"
    t.integer "cost_in_cents"
    t.string "description"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "batches", force: :cascade do |t|
    t.bigint "packed_product_id", null: false
    t.string "batch_number"
    t.datetime "produce_date"
    t.datetime "expiration_date"
    t.integer "units"
    t.integer "sold_units"
    t.integer "cancelled_units"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["packed_product_id"], name: "index_batches_on_packed_product_id"
  end

  create_table "batches_employees", id: false, force: :cascade do |t|
    t.bigint "batch_id", null: false
    t.bigint "employee_id", null: false
    t.index ["batch_id"], name: "index_batches_employees_on_batch_id"
    t.index ["employee_id"], name: "index_batches_employees_on_employee_id"
  end

  create_table "bought_ingredients", force: :cascade do |t|
    t.bigint "supplier_id", null: false
    t.bigint "ingredient_id", null: false
    t.bigint "employee_id", null: false
    t.float "weight_in_kg"
    t.integer "kg_price_in_cents"
    t.datetime "order_date"
    t.datetime "estimated_delivery_date"
    t.datetime "delivery_date"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_bought_ingredients_on_employee_id"
    t.index ["ingredient_id"], name: "index_bought_ingredients_on_ingredient_id"
    t.index ["supplier_id"], name: "index_bought_ingredients_on_supplier_id"
  end

  create_table "customers", force: :cascade do |t|
    t.bigint "sales_manager_id", null: false
    t.string "name"
    t.string "contact_person_name"
    t.string "phone"
    t.string "email"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sales_manager_id"], name: "index_customers_on_sales_manager_id"
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "position_id", null: false
    t.string "name"
    t.string "email"
    t.string "phone"
    t.date "begin_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["position_id"], name: "index_employees_on_position_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "batch_id"
    t.bigint "customer_id", null: false
    t.bigint "packed_product_id", null: false
    t.integer "unit_price_in_cents"
    t.datetime "order_date"
    t.datetime "estimated_delivery_date"
    t.datetime "delivery_date"
    t.integer "status"
    t.integer "ordered_units"
    t.integer "sold_units"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["batch_id"], name: "index_orders_on_batch_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["packed_product_id"], name: "index_orders_on_packed_product_id"
  end

  create_table "packed_products", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "name"
    t.integer "weight_in_gramms"
    t.integer "package_type"
    t.integer "price_in_cents"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_packed_products_on_product_id"
  end

  create_table "positions", force: :cascade do |t|
    t.integer "salary_in_cents"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_ingredients", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "ingredient_id", null: false
    t.integer "weight_in_gramms"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_product_ingredients_on_ingredient_id"
    t.index ["product_id"], name: "index_product_ingredients_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.float "fat_percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stored_ingredients", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.bigint "employee_id", null: false
    t.float "weight_in_kg"
    t.datetime "check_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_stored_ingredients_on_employee_id"
    t.index ["ingredient_id"], name: "index_stored_ingredients_on_ingredient_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "contact_person_name"
    t.string "email"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "role"
    t.bigint "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["employee_id"], name: "index_users_on_employee_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "batches", "packed_products"
  add_foreign_key "bought_ingredients", "employees"
  add_foreign_key "bought_ingredients", "ingredients"
  add_foreign_key "bought_ingredients", "suppliers"
  add_foreign_key "customers", "employees", column: "sales_manager_id"
  add_foreign_key "employees", "positions"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "packed_products"
  add_foreign_key "packed_products", "products"
  add_foreign_key "product_ingredients", "ingredients"
  add_foreign_key "product_ingredients", "products"
  add_foreign_key "stored_ingredients", "employees"
  add_foreign_key "stored_ingredients", "ingredients"
  add_foreign_key "users", "employees"
end
