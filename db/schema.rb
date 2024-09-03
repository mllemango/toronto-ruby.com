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

ActiveRecord::Schema[7.1].define(version: 2024_06_13_220002) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "rsvp_link"
    t.text "location"
    t.text "presentation"
    t.text "presenter"
    t.string "sponsor"
    t.string "sponsor_link"
    t.string "sponsor_logo"
    t.integer "status"
    t.datetime "start_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.virtual "slug", type: :string, null: false, as: "lower(regexp_replace(regexp_replace((name)::text, ' +'::text, '-'::text, 'g'::text), '[^a-zA-Z0-9-]'::text, ''::text, 'g'::text))", stored: true
    t.index ["slug"], name: "index_events_on_slug", unique: true
  end

end
