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

ActiveRecord::Schema.define(version: 2019_09_26_133025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_tickets", force: :cascade do |t|
    t.bigint "ticket_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_tickets_on_event_id"
    t.index ["ticket_id"], name: "index_event_tickets_on_ticket_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name", limit: 150, null: false
    t.text "description"
    t.datetime "date"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_tickets", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "ticket_id", null: false
    t.integer "quantity", default: 0, null: false
    t.decimal "price", precision: 15, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_tickets_on_order_id"
    t.index ["ticket_id"], name: "index_order_tickets_on_ticket_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.decimal "sub_total", precision: 15, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "available_tickets", null: false
    t.decimal "price", precision: 15, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_tickets", "events"
  add_foreign_key "event_tickets", "events", name: "fk_event_tickets_to_events"
  add_foreign_key "event_tickets", "tickets"
  add_foreign_key "event_tickets", "tickets", name: "fk_event_tickets_to_tickets"
  add_foreign_key "order_tickets", "orders", name: "fk_order_tickets_to_order"
  add_foreign_key "order_tickets", "tickets", name: "fk_order_tickets_to_ticket"
end
