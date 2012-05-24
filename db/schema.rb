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

ActiveRecord::Schema.define(:version => 20120415163224) do

  create_table "companies", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "relationship"
    t.integer  "currency_id"
    t.string   "language"
    t.integer  "contact_principal_id"
    t.integer  "sales_contact_id"
    t.integer  "country_id"
    t.boolean  "blocked"
    t.string   "phone"
    t.string   "email"
    t.integer  "weekend_day_1"
    t.integer  "weekend_day_2"
    t.boolean  "management_flag"
    t.text     "memo"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "course_code"
    t.string   "course_title"
    t.string   "course_introduction"
    t.string   "course_description"
    t.string   "course_training_material_ref"
    t.string   "course_planned_duration"
    t.string   "decimal"
    t.integer  "subject_id"
    t.string   "course_status"
    t.string   "course_audience"
    t.integer  "company_id"
    t.integer  "course_order"
    t.string   "course_type"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "departments", :force => true do |t|
    t.integer  "company_id"
    t.string   "level_1"
    t.string   "level_2"
    t.string   "department"
    t.integer  "hierarchy_level"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "code"
    t.string   "description"
    t.integer  "capacity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "module_groups", :force => true do |t|
    t.string   "module_group_code"
    t.string   "module_group_description"
    t.string   "audience"
    t.integer  "company_id"
    t.integer  "theme_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "program_courses", :force => true do |t|
    t.integer  "course_id"
    t.integer  "program_id"
    t.decimal  "duration",             :precision => 5, :scale => 2
    t.string   "unit"
    t.integer  "program_course_order"
    t.string   "description"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "program_code"
    t.string   "program_title"
    t.string   "program_order"
    t.string   "program_description"
    t.string   "program_audience"
    t.integer  "company_id"
    t.string   "program_status"
    t.decimal  "program_duration",    :precision => 5, :scale => 2
    t.string   "program_unit"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "quote_details", :force => true do |t|
    t.integer  "quote_id"
    t.integer  "course_id"
    t.string   "status"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "quotes", :force => true do |t|
    t.date     "requested_date"
    t.integer  "user_id"
    t.string   "status"
    t.integer  "company_id"
    t.string   "origin"
    t.text     "comment"
    t.string   "delay"
    t.date     "latest_by_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "subjects", :force => true do |t|
    t.string   "subject_code"
    t.string   "subject_description"
    t.string   "subject_way"
    t.string   "audience"
    t.integer  "company_id"
    t.integer  "module_group_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "themes", :force => true do |t|
    t.string   "theme_code"
    t.string   "theme_description"
    t.string   "theme_private_field"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "training_users", :force => true do |t|
    t.integer  "training_id"
    t.integer  "user_id"
    t.string   "status"
    t.integer  "quote_details_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "trainings", :force => true do |t|
    t.integer  "course_id"
    t.date     "training_start_date"
    t.date     "training_end_date"
    t.string   "origin"
    t.string   "description"
    t.integer  "location_id"
    t.integer  "user_id"
    t.string   "language"
    t.decimal  "expected_duration"
    t.decimal  "effective_duration"
    t.string   "duration_unit"
    t.integer  "planned_participants"
    t.integer  "effective_participants"
    t.string   "status"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "user_code"
    t.string   "acronym"
    t.string   "email"
    t.string   "email_status"
    t.date     "recruited_at"
    t.string   "status"
    t.string   "title"
    t.integer  "department_id"
    t.boolean  "academy_flag"
    t.boolean  "manager_flag"
    t.boolean  "trainer_flag"
    t.integer  "hierarchy_level"
    t.integer  "company_id"
    t.integer  "manager_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
