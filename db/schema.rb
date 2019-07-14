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

ActiveRecord::Schema.define(version: 20190714005823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.text "description"
    t.integer "amount"
    t.bigint "business_id"
    t.bigint "proposal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_bids_on_business_id"
    t.index ["proposal_id"], name: "index_bids_on_proposal_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "manager"
    t.string "bus_type"
    t.string "address_1"
    t.string "city"
    t.string "region"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "business_image"
    t.string "slug"
    t.index ["email"], name: "index_businesses_on_email", unique: true
    t.index ["reset_password_token"], name: "index_businesses_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_businesses_on_slug", unique: true
  end

  create_table "event_pages", force: :cascade do |t|
    t.string "event_name"
    t.string "address"
    t.date "date_start"
    t.date "date_end"
    t.text "about"
    t.bigint "org_id"
    t.bigint "event_id"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "short_desc"
    t.index ["business_id"], name: "index_event_pages_on_business_id"
    t.index ["event_id"], name: "index_event_pages_on_event_id"
    t.index ["org_id"], name: "index_event_pages_on_org_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.text "about"
    t.string "address"
    t.bigint "business_id"
    t.bigint "org_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "org_active", default: true
    t.boolean "business_active", default: false
    t.index ["business_id"], name: "index_events_on_business_id"
    t.index ["org_id"], name: "index_events_on_org_id"
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "orgs", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "manager"
    t.string "org_type"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "zip_code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "slug"
    t.index ["email"], name: "index_orgs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_orgs_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_orgs_on_slug", unique: true
  end

  create_table "proposals", force: :cascade do |t|
    t.string "description"
    t.string "reach"
    t.string "amount_goal"
    t.string "location"
    t.date "date"
    t.bigint "org_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["org_id"], name: "index_proposals_on_org_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string "company_name"
    t.string "business_type"
    t.text "about"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "zip_code"
    t.string "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bids", "businesses"
  add_foreign_key "bids", "proposals"
  add_foreign_key "event_pages", "businesses"
  add_foreign_key "event_pages", "events"
  add_foreign_key "event_pages", "orgs"
  add_foreign_key "events", "businesses"
  add_foreign_key "events", "orgs"
  add_foreign_key "proposals", "orgs"
end
