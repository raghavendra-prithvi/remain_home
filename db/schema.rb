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

ActiveRecord::Schema.define(version: 20140425065925) do

  create_table "checklists", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "docgraph_procs", force: true do |t|
    t.integer  "npi"
    t.text     "provider_type"
    t.string   "medicare_participation_indicator"
    t.string   "place_of_service"
    t.string   "hcpcs_code"
    t.text     "hcpcs_description"
    t.integer  "line_srvc_cnt"
    t.string   "bene_unique_cnt"
    t.string   "bene_day_srvc_cnt"
    t.string   "average_Medicare_allowed_amt"
    t.string   "stdev_Medicare_allowed_amt"
    t.string   "average_submitted_chrg_amt"
    t.string   "stdev_submitted_chrg_amt"
    t.string   "average_Medicare_payment_amt"
    t.string   "stdev_Medicare_payment_amt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "docgraph_rxes", force: true do |t|
    t.integer  "npi"
    t.text     "bn"
    t.integer  "claim_count"
    t.integer  "claim_count_daw1"
    t.integer  "claim_count_cmpnd2"
    t.integer  "quantity_sum"
    t.integer  "day_supply_sum"
    t.integer  "gross_drug_cost_sum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "docgraph_teams", force: true do |t|
    t.integer  "npi"
    t.integer  "npi_dest"
    t.integer  "count"
    t.integer  "patient_count"
    t.integer  "same_day_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encounters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medications", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "product_name"
    t.string   "dose_quantity"
    t.string   "rate_quantity"
    t.string   "reason"
    t.string   "prescriber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "npis", force: true do |t|
    t.integer  "npi"
    t.string   "first_name"
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "tax_code"
    t.text     "tax_description"
    t.string   "tax_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
