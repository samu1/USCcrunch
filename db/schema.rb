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

ActiveRecord::Schema.define(:version => 20140512093813) do

  create_table "admins", :force => true do |t|
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
    t.string   "username"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.boolean  "send_copy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "faqs", :force => true do |t|
    t.integer  "user_id"
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "question_document_file_name"
    t.string   "question_document_content_type"
    t.integer  "question_document_file_size"
    t.integer  "class_id"
  end

  create_table "favorites", :force => true do |t|
    t.integer  "tweet_id"
    t.integer  "user_id"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "follows", :force => true do |t|
    t.integer  "user_id"
    t.integer  "receiver_id"
    t.boolean  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "importent_links", :force => true do |t|
    t.integer  "user_id"
    t.text     "title"
    t.text     "links"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "link_document_file_name"
    t.string   "link_document_content_type"
    t.integer  "link_document_file_size"
    t.integer  "class_id"
  end

  create_table "ins_firsts", :force => true do |t|
    t.string   "sname"
    t.integer  "sno"
    t.integer  "sm1"
    t.integer  "sm2"
    t.integer  "sm3"
    t.integer  "sm4"
    t.integer  "sm5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ins_seconds", :force => true do |t|
    t.string   "s1name"
    t.integer  "s1no"
    t.integer  "s1m1"
    t.integer  "s1m2"
    t.integer  "s1m3"
    t.integer  "s1m4"
    t.integer  "s1m5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "instructor_classes", :force => true do |t|
    t.integer  "user_id"
    t.string   "syllabus_link_file_name"
    t.string   "syllabus_link_content_type"
    t.integer  "syllabus_link_file_size"
    t.string   "class_photo_file_name"
    t.string   "class_photo_content_type"
    t.integer  "class_photo_file_size"
    t.string   "class_theme"
    t.string   "class_name"
    t.text     "syllabus"
    t.text     "class_description"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "instructorfirst_classes", :force => true do |t|
    t.string   "name"
    t.integer  "no"
    t.integer  "m1"
    t.integer  "m2"
    t.integer  "m3"
    t.integer  "m4"
    t.integer  "m5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "joining_reports", :force => true do |t|
    t.boolean  "mon"
    t.boolean  "tue"
    t.boolean  "wed"
    t.boolean  "thu"
    t.boolean  "fri"
    t.boolean  "sat"
    t.boolean  "sun"
    t.integer  "user_id"
    t.integer  "instructor_class_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "readings", :force => true do |t|
    t.integer  "user_id"
    t.text     "title"
    t.text     "reading"
    t.string   "read_document_file_name"
    t.string   "read_document_content_type"
    t.integer  "read_document_file_size"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "class_id"
  end

  create_table "reports", :force => true do |t|
    t.integer  "user_id"
    t.integer  "receiver_id"
    t.text     "body"
    t.string   "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "school_admins", :force => true do |t|
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "school_name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "slug"
    t.integer  "admin_id"
  end

  add_index "school_admins", ["email"], :name => "index_school_admins_on_email", :unique => true
  add_index "school_admins", ["reset_password_token"], :name => "index_school_admins_on_reset_password_token", :unique => true
  add_index "school_admins", ["slug"], :name => "index_school_admins_on_slug"

  create_table "tweets", :force => true do |t|
    t.integer  "user_id"
    t.integer  "receiver_id"
    t.text     "body"
    t.string   "document_content_type"
    t.string   "document_file_name"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.boolean  "reply"
    t.integer  "tweet_id"
    t.string   "post_box"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                      :default => "", :null => false
    t.string   "encrypted_password",         :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "location"
    t.string   "slug"
    t.integer  "school_id"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",            :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "state"
    t.text     "bio"
    t.string   "major"
    t.string   "website"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
    t.integer  "school_admin_id"
    t.string   "theme"
    t.string   "class_name"
    t.text     "syllabus"
    t.text     "class_description"
    t.string   "class_photo_file_name"
    t.string   "class_photo_content_type"
    t.integer  "class_photo_file_size"
    t.string   "class_theme"
    t.string   "syllabus_link_file_name"
    t.string   "syllabus_link_content_type"
    t.integer  "syllabus_link_file_size"
    t.string   "contact_no"
    t.string   "guardian_no"
    t.integer  "tid"
    t.string   "tname"
    t.string   "teacher_class"
    t.string   "subject"
    t.string   "contact"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["slug"], :name => "index_users_on_slug"
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
