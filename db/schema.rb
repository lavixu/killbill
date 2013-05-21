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

ActiveRecord::Schema.define(:version => 20130513120956) do

  create_table "events", :force => true do |t|
    t.string   "description",    :default => "null"
    t.datetime "occurence_date"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "payers", :force => true do |t|
    t.integer  "user_id",     :limit => 8, :null => false
    t.decimal  "amount_paid"
    t.integer  "event_id",    :limit => 8, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "purchase_user_mapping", :force => true do |t|
    t.integer  "purchase_id", :limit => 8
    t.integer  "user_id",     :limit => 8
    t.integer  "settlement"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "event_id",       :limit => 8, :null => false
    t.decimal  "amount"
    t.string   "purchanse_type"
    t.string   "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "repayer_id",       :limit => 8, :null => false
    t.integer  "receiver_id",      :limit => 8, :null => false
    t.decimal  "amount_paid",                   :null => false
    t.decimal  "amount_remaining",              :null => false
    t.integer  "last_purchase_id", :limit => 8, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "user_friend_mappings", :force => true do |t|
    t.integer  "user_id",    :limit => 8,                   :null => false
    t.integer  "friend_id",  :limit => 8,                   :null => false
    t.boolean  "is_friend",               :default => true
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
