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

ActiveRecord::Schema.define(:version => 20121218200213) do

  create_table "benefactors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  create_table "items", :force => true do |t|
    t.integer  "list_id"
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.decimal  "price"
    t.string   "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "items_lists", :id => false, :force => true do |t|
    t.integer "item_id"
    t.integer "list_id"
  end

  create_table "kids", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.integer  "parent_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "photo"
    t.string   "youtube"
    t.text     "child_descript"
    t.string   "illness"
  end

  create_table "lists", :force => true do |t|
    t.string   "title"
    t.integer  "kid_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "parents", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  create_table "purchases", :force => true do |t|
    t.integer  "item_id"
    t.integer  "benefactor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
