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

ActiveRecord::Schema[7.0].define(version: 2022_12_17_001617) do
  create_table "apperrals", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
  end

  create_table "larges", force: :cascade do |t|
    t.integer "apperral_id", null: false
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apperral_id"], name: "index_larges_on_apperral_id"
  end

  create_table "media", force: :cascade do |t|
    t.integer "apperral_id", null: false
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apperral_id"], name: "index_media_on_apperral_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "rifle_id", null: false
    t.integer "apperral_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apperral_id"], name: "index_orders_on_apperral_id"
    t.index ["rifle_id"], name: "index_orders_on_rifle_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "parts", force: :cascade do |t|
    t.integer "rifle_id", null: false
    t.string "description"
    t.integer "inventory"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rifle_id"], name: "index_parts_on_rifle_id"
  end

  create_table "rifle_pictures", force: :cascade do |t|
    t.integer "rifle_id", null: false
    t.string "image_url"
    t.integer "order_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rifle_id"], name: "index_rifle_pictures_on_rifle_id"
  end

  create_table "rifles", force: :cascade do |t|
    t.float "caliper"
    t.text "specs"
    t.float "price"
    t.boolean "pre_assembled"
    t.integer "inventory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "smalls", force: :cascade do |t|
    t.integer "apperral_id", null: false
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apperral_id"], name: "index_smalls_on_apperral_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "address"
    t.string "state"
    t.string "zip_code"
    t.string "city"
    t.string "password_digest"
    t.boolean "employee", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "xlarges", force: :cascade do |t|
    t.integer "apperral_id", null: false
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apperral_id"], name: "index_xlarges_on_apperral_id"
  end

  create_table "xsmalls", force: :cascade do |t|
    t.integer "apperral_id", null: false
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apperral_id"], name: "index_xsmalls_on_apperral_id"
  end

  create_table "xxlarges", force: :cascade do |t|
    t.integer "apperral_id", null: false
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apperral_id"], name: "index_xxlarges_on_apperral_id"
  end

  add_foreign_key "larges", "apperrals"
  add_foreign_key "media", "apperrals"
  add_foreign_key "orders", "apperrals"
  add_foreign_key "orders", "rifles"
  add_foreign_key "orders", "users"
  add_foreign_key "parts", "rifles"
  add_foreign_key "rifle_pictures", "rifles"
  add_foreign_key "smalls", "apperrals"
  add_foreign_key "xlarges", "apperrals"
  add_foreign_key "xsmalls", "apperrals"
  add_foreign_key "xxlarges", "apperrals"
end
