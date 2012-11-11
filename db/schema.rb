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

ActiveRecord::Schema.define(:version => 20121110200525) do

  create_table "tasks", :force => true do |t|
    t.integer  "rank"
    t.string   "name"
    t.datetime "createDate"
    t.datetime "closeDate"
    t.integer  "currentWorkLog"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "worklogs", :force => true do |t|
    t.integer  "taskID"
    t.datetime "startTime"
    t.datetime "endTime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
