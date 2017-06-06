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

ActiveRecord::Schema.define(version: 20170606081203) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_plans", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.time "start_time"
    t.time "shipment_time"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "product_id"
    t.text "description"
    t.datetime "input_date"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_tables", force: :cascade do |t|
    t.integer "product_id"
    t.integer "customer_id"
    t.integer "count"
    t.text "special"
    t.text "package"
    t.text "shipment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
