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

ActiveRecord::Schema.define(:version => 20120223221520) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "Ustreamid"
    t.string   "Ustreamchat"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "bkpurchaseurl"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "bookfiles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookpdfs", :force => true do |t|
    t.string   "filename"
    t.string   "filetype"
    t.binary   "filedata"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookworms", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "picurl"
    t.string   "fanbook"
    t.string   "review"
    t.string   "fanbook2"
    t.string   "review2"
    t.string   "fanbook3"
    t.string   "review3"
    t.string   "fanauthor"
    t.string   "fanauthor2"
    t.string   "fanauthor3"
    t.string   "genre"
    t.string   "genre2"
    t.string   "genre3"
    t.string   "todo"
    t.string   "todo2"
    t.string   "twitter"
    t.string   "facebook"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authorreview"
    t.string   "authorreview2"
    t.string   "authorreview3"
  end

end
