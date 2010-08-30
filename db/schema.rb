# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100830074746) do

  create_table "companies", :force => true do |t|
    t.string  "company_name", :limit => 100
    t.string  "city",         :limit => 50
    t.string  "state",        :limit => 50
    t.string  "deleted",      :limit => 0,   :default => "No"
    t.string  "address1",     :limit => 50
    t.string  "address2",     :limit => 50
    t.string  "zipcode",      :limit => 50
    t.string  "website"
    t.string  "phone"
    t.string  "detail"
    t.integer "industry_id",                                   :null => false
  end

  add_index "companies", ["industry_id"], :name => "industry_id"

  create_table "company_representatives", :force => true do |t|
    t.integer "user_id"
    t.integer "company_id"
  end

  add_index "company_representatives", ["company_id"], :name => "company_id"
  add_index "company_representatives", ["user_id"], :name => "user_id"

  create_table "industries", :force => true do |t|
    t.string "name", :limit => 30, :null => false
  end

  create_table "school_representatives", :force => true do |t|
    t.integer "user_id"
    t.integer "school_id"
  end

  add_index "school_representatives", ["school_id"], :name => "school_id"
  add_index "school_representatives", ["user_id"], :name => "user_id"

  create_table "schools", :force => true do |t|
    t.string "school_name", :limit => 100
    t.string "city",        :limit => 50
    t.string "state",       :limit => 50
    t.string "deleted",     :limit => 0,   :default => "No"
    t.string "address1",    :limit => 50
    t.string "address2",    :limit => 50
    t.string "zipcode",     :limit => 50
    t.string "website"
    t.string "phone"
    t.string "detail"
  end

  create_table "user_profiles", :force => true do |t|
    t.string  "first_name",     :limit => 30,                  :null => false
    t.string  "last_name",      :limit => 30
    t.string  "gender",         :limit => 0,  :default => "m", :null => false
    t.string  "address1",       :limit => 50,                  :null => false
    t.string  "address2",       :limit => 50
    t.string  "city",           :limit => 30,                  :null => false
    t.string  "state",          :limit => 30,                  :null => false
    t.string  "zipcode",        :limit => 10,                  :null => false
    t.string  "contact_number", :limit => 15,                  :null => false
    t.string  "email_address",  :limit => 50,                  :null => false
    t.integer "user_id",                                       :null => false
    t.integer "dob"
  end

  add_index "user_profiles", ["user_id"], :name => "user_id"

  create_table "users", :force => true do |t|
    t.integer  "time_created",                                              :null => false
    t.string   "deleted",                   :limit => 0,  :default => "No", :null => false
    t.string   "login",                     :limit => 50
    t.string   "email",                     :limit => 50
    t.string   "account_type",              :limit => 50,                   :null => false
    t.string   "salt",                      :limit => 50
    t.string   "crypted_password"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

end
