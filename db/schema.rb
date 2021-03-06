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

ActiveRecord::Schema.define(version: 2022_06_20_182639) do

  create_table "perguntas_assessjur2s", force: :cascade do |t|
    t.json "duvida"
    t.string "tel"
    t.string "email"
    t.string "tp_duvida"
    t.string "status"
    t.string "numatd"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "perguntas_assessjurs", force: :cascade do |t|
    t.text "duvida"
    t.string "tel"
    t.string "email"
    t.string "tp_duvida"
    t.string "status"
    t.string "numatd"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
