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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120708223527) do

  create_table "artigos", :force => true do |t|
    t.integer  "autor_id"
    t.string   "titulo"
    t.string   "subtitulo"
    t.string   "texto"
    t.string   "palavra_chave"
    t.datetime "data"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "autores", :force => true do |t|
    t.string   "nome"
    t.string   "apelido"
    t.integer  "crfa"
    t.string   "bibiografia"
    t.datetime "created"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "contato", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "texto"
    t.datetime "created"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "debates", :force => true do |t|
    t.integer  "autor_id"
    t.string   "titulo"
    t.string   "subtitulo"
    t.string   "texto"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "debates_usuarios", :force => true do |t|
    t.integer  "debate_id"
    t.integer  "usuario_id"
    t.datetime "data_resposta"
    t.integer  "status"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "duvidas", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "titulo"
    t.string   "texto"
    t.datetime "created"
    t.integer  "status"
    t.integer  "autor_responsavel_id"
    t.string   "resposta"
    t.datetime "data_resposta"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "noticia", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.integer  "autor_id"
    t.string   "texto"
    t.integer  "status"
    t.date     "data"
    t.datetime "created"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "super_destaques", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.string   "slug"
    t.integer  "status"
    t.date     "data_ini"
    t.date     "data_fim"
    t.integer  "posicao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "apelido"
    t.date     "data_nasc"
    t.string   "email"
    t.string   "senha"
    t.integer  "status"
    t.datetime "created"
    t.datetime "modified"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
