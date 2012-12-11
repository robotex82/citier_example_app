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

ActiveRecord::Schema.define(:version => 20121211104001) do

  create_table "audios", :force => true do |t|
    t.string "title"
    t.string "genre"
  end

  create_table "dictionaries", :force => true do |t|
    t.string "lf"
    t.string "tf"
  end

  create_table "media", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "novels", :force => true do |t|
    t.text "summary"
  end

  create_table "tablebooks", :force => true do |t|
    t.string "title"
    t.string "author"
  end

  create_table "videos", :force => true do |t|
    t.string "title"
    t.string "genre"
  end

  create_view "view_audios", "SELECT media.id, type,name,price,created_at,updated_at,title,genre FROM media, audios WHERE media.id = audios.id", :force => true do |v|
    v.column :id
    v.column :type
    v.column :name
    v.column :price
    v.column :created_at
    v.column :updated_at
    v.column :title
    v.column :genre
  end

  create_view "view_tablebooks", "SELECT media.id, type,name,price,created_at,updated_at,title,author FROM media, tablebooks WHERE media.id = tablebooks.id", :force => true do |v|
    v.column :id
    v.column :type
    v.column :name
    v.column :price
    v.column :created_at
    v.column :updated_at
    v.column :title
    v.column :author
  end

  create_view "view_dictionaries", "SELECT view_tablebooks.id, type,name,price,created_at,updated_at,title,author,lf,tf FROM view_tablebooks, dictionaries WHERE view_tablebooks.id = dictionaries.id", :force => true do |v|
    v.column :id
    v.column :type
    v.column :name
    v.column :price
    v.column :created_at
    v.column :updated_at
    v.column :title
    v.column :author
    v.column :lf
    v.column :tf
  end

  create_view "view_novels", "SELECT view_tablebooks.id, type,name,price,created_at,updated_at,title,author,summary FROM view_tablebooks, novels WHERE view_tablebooks.id = novels.id", :force => true do |v|
    v.column :id
    v.column :type
    v.column :name
    v.column :price
    v.column :created_at
    v.column :updated_at
    v.column :title
    v.column :author
    v.column :summary
  end

  create_view "view_videos", "SELECT media.id, type,name,price,created_at,updated_at,title,genre FROM media, videos WHERE media.id = videos.id", :force => true do |v|
    v.column :id
    v.column :type
    v.column :name
    v.column :price
    v.column :created_at
    v.column :updated_at
    v.column :title
    v.column :genre
  end

end
