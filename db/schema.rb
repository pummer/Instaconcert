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

ActiveRecord::Schema.define(:version => 20120808004928) do

  create_table "event_requests", :force => true do |t|
    t.float    "lat"
    t.float    "long"
    t.integer  "min_timestamp"
    t.integer  "max_timestamp"
    t.integer  "distance"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "eventgroups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "min_timestamp"
    t.integer  "max_timestamp"
    t.integer  "distance"
    t.float    "lat"
    t.float    "long"
    t.string   "venue_name"
    t.datetime "start_time"
    t.integer  "thumb_img_id"
    t.text     "details"
    t.integer  "eventgroup_id"
  end

  create_table "images", :force => true do |t|
    t.string   "instagram_id"
    t.float    "lat"
    t.float    "long"
    t.string   "img_lowres_url"
    t.string   "img_thumb_url"
    t.string   "img_standard_url"
    t.text     "caption_text",       :limit => 255
    t.datetime "caption_time"
    t.integer  "like_count"
    t.datetime "img_time"
    t.string   "instagram_link_url"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "event_id"
  end

end
