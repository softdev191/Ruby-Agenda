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

ActiveRecord::Schema.define(version: 2020_05_30_211320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendamentos", force: :cascade do |t|
    t.bigint "empresa_id", null: false
    t.bigint "usuario_id", null: false
    t.datetime "agendamento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_agendamentos_on_empresa_id"
    t.index ["usuario_id"], name: "index_agendamentos_on_usuario_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "nome"
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_empresas_on_usuario_id"
  end

  create_table "infos", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.bigint "perfil_id", null: false
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["perfil_id"], name: "index_infos_on_perfil_id"
    t.index ["usuario_id"], name: "index_infos_on_usuario_id"
  end

  create_table "perfils", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "agendamentos", "empresas"
  add_foreign_key "agendamentos", "usuarios"
  add_foreign_key "empresas", "usuarios"
  add_foreign_key "infos", "perfils"
  add_foreign_key "infos", "usuarios"
end
