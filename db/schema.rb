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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140213155800) do

  create_table "buyers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contractors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "foremen", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "maps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "phases", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "plots", :force => true do |t|
    t.string   "code"
    t.string   "home_type"
    t.float    "size"
    t.integer  "map_id"
    t.integer  "buyer_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "row"
    t.integer  "col"
    t.integer  "group_id"
    t.integer  "status_id"
    t.string   "deed_no"
    t.text     "comments"
    t.decimal  "base_price",         :default => 0.0
    t.decimal  "extra_land_price",   :default => 0.0
    t.decimal  "house_add_on_price", :default => 0.0
    t.decimal  "plot_add_on_price",  :default => 0.0
    t.integer  "phase_id"
    t.date     "transfer_date"
    t.decimal  "transfer_fee"
    t.integer  "contractor_pay_no"
    t.integer  "contractor_id"
    t.integer  "foreman_id"
    t.decimal  "tax_price"
    t.decimal  "appr_price"
    t.decimal  "personal_tax"
    t.decimal  "special_tax"
    t.decimal  "local_tax"
    t.decimal  "other_fee"
    t.decimal  "common_charge"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
