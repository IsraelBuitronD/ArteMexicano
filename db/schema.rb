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

ActiveRecord::Schema.define(:version => 20121024020143) do

  create_table "artists", :force => true do |t|
    t.string  "name"
    t.string  "business_name"
    t.string  "address"
    t.string  "phone"
    t.string  "email"
    t.string  "foto"
    t.decimal "latitude"
    t.decimal "longitud"
    t.string  "location"
    t.string  "biography"
  end

  create_table "artists_techniques", :id => false, :force => true do |t|
    t.integer "artist_id"
    t.integer "technique_id"
  end

  add_index "artists_techniques", ["artist_id", "technique_id"], :name => "artists_techniques_index", :unique => true

  create_table "cultural_backgrounds", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  create_table "handcrafts", :force => true do |t|
    t.string  "name"
    t.string  "description"
    t.decimal "weight"
    t.decimal "height"
    t.decimal "width"
    t.decimal "depth"
    t.boolean "highlight"
    t.integer "status"
    t.integer "artist_id"
  end

  create_table "handcrafts_cultural_backgrounds", :id => false, :force => true do |t|
    t.integer "handcraft_id"
    t.integer "cultural_background_id"
  end

  add_index "handcrafts_cultural_backgrounds", ["handcraft_id", "cultural_background_id"], :name => "handcrafts_cultural_backgrounds_index", :unique => true

  create_table "handcrafts_manufacturing_techniques", :id => false, :force => true do |t|
    t.integer "handcraft_id"
    t.integer "manufacturing_technique_id"
  end

  add_index "handcrafts_manufacturing_techniques", ["handcraft_id", "manufacturing_technique_id"], :name => "handcrafts_manufacturing_techniques_index", :unique => true

  create_table "handcrafts_materials", :id => false, :force => true do |t|
    t.integer "handcraft_id"
    t.integer "material_id"
  end

  add_index "handcrafts_materials", ["handcraft_id", "material_id"], :name => "handcrafts_materials_index", :unique => true

  create_table "handcrafts_photos", :id => false, :force => true do |t|
    t.integer "handcraft_id"
    t.integer "photo_id"
  end

  add_index "handcrafts_photos", ["handcraft_id", "photo_id"], :name => "handcrafts_photos_index", :unique => true

  create_table "handcrafts_techniques", :id => false, :force => true do |t|
    t.integer "handcraft_id"
    t.integer "technique_id"
  end

  add_index "handcrafts_techniques", ["handcraft_id", "technique_id"], :name => "handcrafts_techniques_index", :unique => true

  create_table "manufacturing_techniques", :force => true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "manufacturing_techniques_techniques", :id => false, :force => true do |t|
    t.integer "manufacturing_technique_id"
    t.integer "technique_id"
  end

  add_index "manufacturing_techniques_techniques", ["manufacturing_technique_id", "technique_id"], :name => "manufacturing_techniques_techniques_index", :unique => true

  create_table "materials", :force => true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "state_id"
  end

  add_index "materials", ["state_id"], :name => "index_materials_on_state_id"

  create_table "photos", :force => true do |t|
    t.string   "filename"
    t.string   "description"
    t.boolean  "cover"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "states", :force => true do |t|
    t.string "name"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "techniques", :force => true do |t|
    t.string "name"
    t.string "description"
  end

end
