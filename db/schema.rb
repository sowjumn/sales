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

ActiveRecord::Schema.define(version: 20140223201426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pay_schedules", force: true do |t|
    t.integer "pay_day"
    t.integer "pay_freq_weeks"
    t.integer "pay_delay_days"
    t.integer "pay_month"
  end

  create_table "products", force: true do |t|
    t.integer "seller_id"
    t.string  "name"
    t.integer "price"
  end

  add_index "products", ["seller_id"], name: "index_products_on_seller_id", using: :btree

  create_table "purchases", force: true do |t|
    t.integer "product_id"
    t.date    "date_purchased"
    t.boolean "refunded"
    t.date    "date_refunded"
  end

  add_index "purchases", ["date_purchased"], name: "index_purchases_on_date_purchased", using: :btree
  add_index "purchases", ["product_id"], name: "index_purchases_on_product_id", using: :btree

  create_table "sellers", force: true do |t|
    t.string  "fname"
    t.string  "lname"
    t.integer "balance"
  end

end
