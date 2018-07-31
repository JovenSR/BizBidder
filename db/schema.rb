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

ActiveRecord::Schema.define(version: 2018_07_30_231818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "proposals", force: :cascade do |t|
    t.string "description"
    t.float "price"
    t.boolean "accept"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "request_id"
    t.bigint "service_provider_id"
    t.index ["request_id"], name: "index_proposals_on_request_id"
    t.index ["service_provider_id"], name: "index_proposals_on_service_provider_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "budget"
    t.string "proposalDeadline"
    t.date "eventDate"
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "category"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "service_providers", force: :cascade do |t|
    t.string "companyName"
    t.string "street"
    t.string "city"
    t.string "province"
    t.string "postalCode"
    t.string "email"
    t.string "phone"
    t.string "serviceType"
    t.string "website"
    t.boolean "license"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_service_providers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "email"
    t.string "phone"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "userrole"
    t.string "password_digest"
  end

end
