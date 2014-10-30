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

ActiveRecord::Schema.define(version: 20141022025038) do

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

  create_table "admin_users", force: true do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "agencia", force: true do |t|
    t.string   "nombre"
    t.integer  "dpto_mendoza_id"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.string   "web"
    t.float    "latitud"
    t.float    "longitud"
    t.boolean  "alta"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "agencia", ["dpto_mendoza_id"], name: "index_agencia_on_dpto_mendoza_id"

  create_table "caracteristicas", force: true do |t|
    t.integer  "segmento_id"
    t.string   "tipo"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "caracteristicas", ["segmento_id"], name: "index_caracteristicas_on_segmento_id"

  create_table "dpto_mendozas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", force: true do |t|
    t.integer  "vehiculo_id"
    t.string   "descripciom"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  add_index "fotos", ["vehiculo_id"], name: "index_fotos_on_vehiculo_id"

  create_table "marcas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modelos", force: true do |t|
    t.integer  "marca_id"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modelos", ["marca_id"], name: "index_modelos_on_marca_id"

  create_table "segmentos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.string   "telefono2"
    t.boolean  "alta",                   default: true
    t.integer  "dpto_mendoza_id"
  end

  add_index "usuarios", ["dpto_mendoza_id"], name: "index_usuarios_on_dpto_mendoza_id"
  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "vehiculos", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "agencia_id"
    t.integer  "segmento_id"
    t.integer  "dpto_mendoza_id"
    t.integer  "marca_id"
    t.integer  "modelo_id"
    t.string   "modeloCustom"
    t.string   "titulo"
    t.integer  "anio"
    t.integer  "kilometraje"
    t.string   "combustible"
    t.float    "precio"
    t.string   "condicion"
    t.text     "comentario"
    t.boolean  "destacado"
    t.boolean  "principal"
    t.integer  "denunciado"
    t.boolean  "alta"
    t.text     "equipamiento"
    t.text     "seguridad"
    t.text     "exterior"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_ppal_file_name"
    t.string   "foto_ppal_content_type"
    t.integer  "foto_ppal_file_size"
    t.datetime "foto_ppal_updated_at"
  end

  add_index "vehiculos", ["agencia_id"], name: "index_vehiculos_on_agencia_id"
  add_index "vehiculos", ["dpto_mendoza_id"], name: "index_vehiculos_on_dpto_mendoza_id"
  add_index "vehiculos", ["marca_id"], name: "index_vehiculos_on_marca_id"
  add_index "vehiculos", ["modelo_id"], name: "index_vehiculos_on_modelo_id"
  add_index "vehiculos", ["segmento_id"], name: "index_vehiculos_on_segmento_id"
  add_index "vehiculos", ["usuario_id"], name: "index_vehiculos_on_usuario_id"

end
