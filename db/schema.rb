# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_18_052948) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_spaces", force: :cascade do |t|
    t.string "name"
    t.string "entrance_distances"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "vehicle_id", null: false
    t.integer "status", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parking_space_id"
    t.integer "total_fee", default: 0
    t.index ["parking_space_id"], name: "index_tickets_on_parking_space_id"
    t.index ["vehicle_id"], name: "index_tickets_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "plate"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tickets", "parking_spaces"
  add_foreign_key "tickets", "vehicles"
end
