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

ActiveRecord::Schema.define(:version => 20120727194319) do

  create_table "current_prices", :force => true do |t|
    t.decimal  "price"
    t.string   "symbol"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "current_prices", ["symbol"], :name => "index_current_prices_on_symbol"

  create_table "current_symbols", :force => true do |t|
    t.datetime "active_date"
    t.string   "symbol"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "symbol_info_id"
  end

  add_index "current_symbols", ["symbol"], :name => "index_current_symbols_on_symbol"
  add_index "current_symbols", ["symbol_info_id"], :name => "index_current_symbols_on_symbol_info_id"

  create_table "daily_prices", :force => true do |t|
    t.decimal  "opening"
    t.decimal  "high"
    t.decimal  "low"
    t.integer  "volume"
    t.decimal  "closing"
    t.string   "symbol"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "symbol_info_id"
  end

  add_index "daily_prices", ["symbol"], :name => "index_daily_prices_on_symbol"
  add_index "daily_prices", ["symbol_info_id"], :name => "index_daily_prices_on_symbol_info_id"

  create_table "levels", :force => true do |t|
    t.string   "symbol"
    t.datetime "active_date"
    t.decimal  "top"
    t.decimal  "base"
    t.string   "level1"
    t.string   "level2"
    t.string   "level3"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "levels", ["symbol"], :name => "index_levels_on_symbol"

  create_table "symbol_infos", :force => true do |t|
    t.string   "symbol"
    t.string   "company_name"
    t.string   "exchange"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "symbol_infos", ["symbol"], :name => "index_symbol_infos_on_symbol"

end
