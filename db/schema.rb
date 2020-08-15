# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_815_141_453) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'analytics', force: :cascade do |t|
    t.float 'ip_address'
    t.string 'country'
    t.bigint 'shorten_url_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['shorten_url_id'], name: 'index_analytics_on_shorten_url_id'
  end

  create_table 'shorten_urls', force: :cascade do |t|
    t.string 'original_url'
    t.string 'short_url'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
