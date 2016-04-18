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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160418164842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apart_photos", force: :cascade do |t|
    t.integer  "apartment_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "apart_photos", ["apartment_id"], name: "index_apart_photos_on_apartment_id", using: :btree

  create_table "apartments", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "lookforroomate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.string   "bedroomtype"
    t.boolean  "subleasing"
    t.boolean  "pet"
    t.integer  "bedroomamount"
    t.string   "address"
    t.string   "contactemail"
    t.string   "contactwechat"
    t.string   "contactqq"
    t.string   "contactphone"
    t.integer  "rent"
  end

  create_table "classfieds", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.string   "phone"
    t.string   "email"
    t.string   "wechat"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "lots", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "status"
    t.string   "category"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.boolean  "pickup"
    t.integer  "contactPhone",       limit: 8
    t.string   "contactEmail"
    t.string   "contactWechat"
    t.string   "lotAddress"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "lot_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "photos", ["lot_id"], name: "index_photos_on_lot_id", using: :btree

  create_table "testitems", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "testlots", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "testphotos", force: :cascade do |t|
    t.integer  "testlot_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "testphotos", ["testlot_id"], name: "index_testphotos_on_testlot_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "lastname"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "apart_photos", "apartments"
  add_foreign_key "photos", "lots"
  add_foreign_key "testphotos", "testlots"
end
