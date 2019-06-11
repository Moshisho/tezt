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

ActiveRecord::Schema.define(version: 20180626134436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "environments", force: :cascade do |t|
    t.string   "tags"
    t.string   "digest"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "failures", force: :cascade do |t|
    t.string   "message"
    t.text     "stack_trace"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tezt_records", force: :cascade do |t|
    t.string   "name"
    t.string   "class_name"
    t.string   "tags"
    t.boolean  "active"
    t.integer  "user_id"
    t.integer  "team_id"
    t.boolean  "flaky"
    t.integer  "risk"
    t.integer  "avg_duration"
    t.string   "jira_test_id"
    t.string   "jira_bug_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tezt_records", ["team_id"], name: "index_tezt_records_on_team_id", using: :btree
  add_index "tezt_records", ["user_id"], name: "index_tezt_records_on_user_id", using: :btree

  create_table "tezt_runs", force: :cascade do |t|
    t.string   "status"
    t.integer  "failure_id"
    t.integer  "environment_id"
    t.integer  "duration"
    t.string   "machine"
    t.boolean  "debug"
    t.string   "assets"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "tezt_record_id"
  end

  add_index "tezt_runs", ["environment_id"], name: "index_tezt_runs_on_environment_id", using: :btree
  add_index "tezt_runs", ["failure_id"], name: "index_tezt_runs_on_failure_id", using: :btree
  add_index "tezt_runs", ["tezt_record_id"], name: "index_tezt_runs_on_tezt_record_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "notify_in_mail"
    t.boolean  "notify_in_sms"
    t.boolean  "notify_in_chat"
    t.boolean  "active"
    t.string   "chat_username"
    t.integer  "team_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "users", ["team_id"], name: "index_users_on_team_id", using: :btree

  add_foreign_key "tezt_records", "teams"
  add_foreign_key "tezt_records", "users"
  add_foreign_key "tezt_runs", "environments"
  add_foreign_key "tezt_runs", "failures"
  add_foreign_key "tezt_runs", "tezt_records"
  add_foreign_key "users", "teams"
end
