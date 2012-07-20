class Refresh < ActiveRecord::Migration
  def up
  
    create_table "addresses", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "last_name"
    t.string   "emailadd"
    t.integer  "group_id"
  end

  create_table "groups", :force => true do |t|
    t.integer  "user_id"
    t.string   "group_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mails", :force => true do |t|
    t.integer  "address_id"
    t.string   "mail_place"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  end

  def down
  end
end
