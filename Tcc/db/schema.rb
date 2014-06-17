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

ActiveRecord::Schema.define(version: 20140612004545) do

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.string   "responsavel"
    t.integer  "fone"
    t.boolean  "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avaliacaos", force: true do |t|
    t.integer  "nota"
    t.integer  "periodo"
    t.integer  "ano"
    t.integer  "prova_id"
    t.integer  "disciplina_id"
    t.integer  "matricula_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avaliacaos", ["disciplina_id"], name: "index_avaliacaos_on_disciplina_id"
  add_index "avaliacaos", ["matricula_id"], name: "index_avaliacaos_on_matricula_id"
  add_index "avaliacaos", ["prova_id"], name: "index_avaliacaos_on_prova_id"

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

end
