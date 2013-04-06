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


ActiveRecord::Schema.define(:version => 20130405155324) do

  create_table "choices", :force => true do |t|
    t.string   "text"
    t.boolean  "correct"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exams", :force => true do |t|
    t.string   "name"
    t.boolean  "fee"
    t.integer  "pass_rate"
    t.integer  "creator_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.decimal  "cost",       :default => 0.0
  end

  create_table "exams_tags", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "exam_id"
  end

  create_table "questions", :force => true do |t|
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "exam_id"
  end

  create_table "responses", :force => true do |t|
    t.integer  "question_id"
    t.integer  "choice_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "run_id"
    t.boolean  "answer",      :default => false
  end

  create_table "runs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "count",      :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "exam_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags_tests", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "test_id"
  end

  create_table "tests", :force => true do |t|
    t.string   "name"
    t.boolean  "fee",        :default => false
    t.integer  "pass_rate"
    t.string   "code"
    t.integer  "creator_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.boolean  "is_house"
    t.string   "address"
    t.string   "phone"
    t.string   "occupation"
    t.decimal  "balance",         :default => 0.0
    t.string   "image"
    t.string   "password_digest"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "customer_id"
  end

end
