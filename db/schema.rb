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

ActiveRecord::Schema.define(version: 20150525181654) do

  create_table "assuntos", force: :cascade do |t|
    t.string   "nome_assunto"
    t.text     "descricao"
    t.string   "link_image"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "assuntos", ["user_id"], name: "index_assuntos_on_user_id"

  create_table "questaos", force: :cascade do |t|
    t.text     "pergunta"
    t.text     "resposta"
    t.text     "dica"
    t.integer  "tema_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questaos", ["tema_id"], name: "index_questaos_on_tema_id"
  add_index "questaos", ["user_id"], name: "index_questaos_on_user_id"

  create_table "questaousers", force: :cascade do |t|
    t.integer  "entendimento"
    t.integer  "questao_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "questaousers", ["questao_id"], name: "index_questaousers_on_questao_id"
  add_index "questaousers", ["user_id"], name: "index_questaousers_on_user_id"

  create_table "temas", force: :cascade do |t|
    t.string   "nome_tema"
    t.integer  "assunto_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "temas", ["assunto_id"], name: "index_temas_on_assunto_id"
  add_index "temas", ["user_id"], name: "index_temas_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
