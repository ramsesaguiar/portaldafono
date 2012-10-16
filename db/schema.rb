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

ActiveRecord::Schema.define(:version => 20121014132840) do

  create_table "articles", :force => true do |t|
    t.integer  "author_id"
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "texto"
    t.text     "palavras_chave"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "destaque",           :limit => 0
  end

  create_table "authors", :force => true do |t|
    t.string   "nome"
    t.string   "apelido"
    t.integer  "crfa"
    t.text     "bibiografia"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "senha",              :limit => 10
    t.string   "email",              :limit => 50
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "authors", ["crfa"], :name => "crfa", :unique => true

  create_table "contacts", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.text     "texto"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "discussions", :force => true do |t|
    t.integer  "author_id"
    t.string   "titulo"
    t.string   "subtitulo"
    t.text     "texto"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "status",      :limit => 0
  end

  create_table "doubts", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "titulo"
    t.text     "texto"
    t.integer  "autor_responsavel_id"
    t.text     "resposta"
    t.datetime "data_resposta"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "status",               :limit => 0
  end

  create_table "interviews", :force => true do |t|
    t.integer  "author_id"
    t.string   "nome_entrevistado"
    t.text     "texto"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.integer  "author_id"
    t.text     "texto"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "status",             :limit => 0
  end

  create_table "newsletters", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "super_highlights", :force => true do |t|
    t.string   "titulo"
    t.string   "subtitulo"
    t.string   "slug"
    t.date     "data_ini"
    t.date     "data_fim"
    t.integer  "posicao"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "status",             :limit => 0
  end

  create_table "users", :force => true do |t|
    t.string   "nome"
    t.string   "apelido"
    t.date     "data_nasc"
    t.string   "email"
    t.string   "senha"
    t.integer  "status",                    :default => 1
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "url_image"
    t.string   "localizacao"
    t.integer  "uid"
    t.string   "genero",      :limit => 20
  end

end
