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

ActiveRecord::Schema.define(:version => 20120420174853) do

  create_table "accidents", :force => true do |t|
    t.string   "report_number"
    t.date     "date_of_injury"
    t.string   "employee_name"
    t.string   "location"
    t.string   "employee_job"
    t.string   "reported_to_insurance_carrier"
    t.string   "claim_number"
    t.string   "monies_paid_"
    t.string   "type_of_incident"
    t.string   "time_of_incident"
    t.string   "supervisor_when_accident_occurred"
    t.boolean  "drug_screen"
    t.boolean  "lost_time_"
    t.string   "days_of_lost_time"
    t.string   "previous_accidents"
    t.string   "file_status"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "claims_rep"
  end

  create_table "active_admin_comments", :force => true do |t|
    t.integer   "resource_id",   :null => false
    t.string    "resource_type", :null => false
    t.integer   "author_id"
    t.string    "author_type"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string    "email",                                 :default => "", :null => false
    t.string    "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",                         :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "role"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "appointments", :force => true do |t|
    t.integer  "accident_id"
    t.date     "date"
    t.datetime "time"
    t.string   "location_name"
    t.integer  "type_of_reminder_id"
    t.integer  "manager_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", :force => true do |t|
    t.string    "name"
    t.string    "email_address"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "questionnaires", :force => true do |t|
    t.date      "date"
    t.string    "last_name"
    t.string    "first_name"
    t.string    "middle_name"
    t.string    "ssn"
    t.string    "related"
    t.string    "primary_contact_number"
    t.string    "secondary_contact_number"
    t.string    "work_school_different_name"
    t.string    "same_address_current_employee"
    t.string    "home_address"
    t.string    "zip_code"
    t.string    "how_long_at_address"
    t.text      "unemployment_periods"
    t.text      "employment_dates_and_company_names"
    t.text      "schools_during_unemployment"
    t.boolean   "work_for_cash"
    t.string    "report_cash_wages"
    t.text      "terminated_laid_off_details"
    t.boolean   "failed_drug_screen"
    t.text      "convicted_or_deferred_adjudication"
    t.boolean   "valid_drivers_license"
    t.text      "why_no_valid_dl"
    t.string    "license_clear"
    t.string    "years_driving_experience"
    t.boolean   "reliable_transporation"
    t.boolean   "refused_airport_badge"
    t.string    "check_list_physical_tasks"
    t.string    "check_list_work_environments"
    t.string    "email_address"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "type_of_reminders", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
