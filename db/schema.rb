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

ActiveRecord::Schema.define(:version => 20120719161532) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "authentication_types", :force => true do |t|
    t.string   "provider"
    t.boolean  "enable"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "docs", :force => true do |t|
    t.string   "doclink_ref_num"
    t.string   "title"
    t.string   "global_coord"
    t.string   "parent"
    t.string   "condor_ref_num"
    t.string   "german_doc_num"
    t.string   "author"
    t.string   "chapter_name"
    t.string   "training_type"
    t.text     "comments"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "issues", :force => true do |t|
    t.string   "issue"
    t.string   "type"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "version_id"
  end

  create_table "mappings", :force => true do |t|
    t.integer  "docs_id"
    t.string   "us_cfrs"
    t.string   "japan"
    t.string   "pic_s"
    t.string   "eudralex"
    t.string   "iso"
    t.string   "ich"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "mappings", ["docs_id"], :name => "index_mappings_on_docs_id"

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.text     "about"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "requests", :force => true do |t|
    t.text     "requested_by"
    t.date     "requested_date"
    t.string   "team_sponsor"
    t.string   "request_type"
    t.integer  "proposed_version_number"
    t.text     "justification"
    t.text     "description"
    t.text     "sites"
    t.string   "timeline"
    t.text     "team"
    t.string   "commitment"
    t.string   "commitment_details"
    t.text     "superseded_docs"
    t.string   "training_impact"
    t.string   "training_strategy"
    t.date     "pqs_bmt_date"
    t.text     "pqs_bmt_decision_rationale"
    t.date     "pqs_ct_date"
    t.text     "pqs_ct_decision_rationale"
    t.date     "request_closed_date"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "docs_id"
    t.text     "comments"
  end

  create_table "timelines", :force => true do |t|
    t.string   "type"
    t.date     "date"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "version_id"
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
    t.string   "first_name"
    t.string   "last_name"
    t.text     "image"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.integer  "docs_id"
    t.string   "group_num"
    t.integer  "version_number"
    t.text     "comment"
    t.text     "description_of_change"
    t.integer  "capa_number"
    t.string   "revision_type"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "lia_status"
  end

  add_index "versions", ["docs_id"], :name => "index_versions_on_docs_id"

end
