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

ActiveRecord::Schema.define(version: 20171214112905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "encontro_participantes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "participante_id"
    t.bigint "encontro_id"
    t.index ["encontro_id"], name: "index_encontro_participantes_on_encontro_id"
    t.index ["participante_id"], name: "index_encontro_participantes_on_participante_id"
  end

  create_table "encontros", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "codigo"
    t.index ["codigo"], name: "index_encontros_on_codigo", unique: true
  end

  create_table "participantes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "email"
  end

  add_foreign_key "encontro_participantes", "encontros"
  add_foreign_key "encontro_participantes", "participantes"
end
