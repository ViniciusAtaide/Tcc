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

ActiveRecord::Schema.define(version: 20140619000619) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_useres", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_useres", ["email"], name: "index_admin_useres_on_email", unique: true
  add_index "admin_useres", ["reset_password_token"], name: "index_admin_useres_on_reset_password_token", unique: true

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.string   "responsavel"
    t.integer  "fone"
    t.boolean  "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avaliacoes", force: true do |t|
    t.integer  "nota"
    t.integer  "periodo"
    t.integer  "ano"
    t.integer  "prova_id"
    t.integer  "disciplina_id"
    t.integer  "matricula_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avaliacoes", ["disciplina_id"], name: "index_avaliacoes_on_disciplina_id"
  add_index "avaliacoes", ["matricula_id"], name: "index_avaliacoes_on_matricula_id"
  add_index "avaliacoes", ["prova_id"], name: "index_avaliacoes_on_prova_id"

  create_table "disciplinas", force: true do |t|
    t.integer  "cod"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculas", force: true do |t|
    t.date     "datacancelamento"
    t.integer  "turma_id"
    t.integer  "aluno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matriculas", ["aluno_id"], name: "index_matriculas_on_aluno_id"
  add_index "matriculas", ["turma_id"], name: "index_matriculas_on_turma_id"

  create_table "planos", force: true do |t|
    t.text     "descricao"
    t.integer  "professor_id"
    t.integer  "disciplina_id"
    t.integer  "turma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professores", force: true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professores", ["matricula"], name: "index_professores_on_matricula"

  create_table "provas", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turmas", force: true do |t|
    t.string   "turno"
    t.string   "sub"
    t.integer  "serie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "useres", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "useres", ["email"], name: "index_useres_on_email", unique: true
  add_index "useres", ["reset_password_token"], name: "index_useres_on_reset_password_token", unique: true

end
