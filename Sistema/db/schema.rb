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

ActiveRecord::Schema.define(version: 20151020002054) do

  create_table "categorias_componentes", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias_productos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "componentes", force: true do |t|
    t.integer  "id_componente"
    t.string   "nombre"
    t.string   "descripcion"
    t.text     "ppp"
    t.integer  "cantidad_minima"
    t.text     "codigo_interno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "depositos", force: true do |t|
    t.integer  "tipo_de_deposito"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marcas", force: true do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modelos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movimientos_componentes", force: true do |t|
    t.integer  "id_componente"
    t.integer  "id_deposito"
    t.integer  "id_tipo"
    t.date     "fecha"
    t.integer  "cantidad_transferida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movimientos_productos", force: true do |t|
    t.integer  "id_producto"
    t.integer  "id_deposito"
    t.integer  "id_tipo"
    t.date     "fecha"
    t.integer  "cantidad_transferida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordenes_de_produccion", force: true do |t|
    t.date     "fecha"
    t.integer  "nro_formulario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordenes_de_produccion_detalles", force: true do |t|
    t.integer  "id_orden"
    t.integer  "id_producto"
    t.integer  "cantidad_solicitada"
    t.integer  "cantidad_terminada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos_componentes_detalles", force: true do |t|
    t.integer  "id_pedido"
    t.integer  "id_componente"
    t.integer  "cantidad_solicitada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos_de_compras_componentes", force: true do |t|
    t.date     "fecha"
    t.date     "baja"
    t.integer  "nro_formulario"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos_terminados", force: true do |t|
    t.integer  "id_modelo"
    t.integer  "id_categoria"
    t.string   "codigo"
    t.text     "descripcion"
    t.integer  "cantidad_minima"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitudes_componentes", force: true do |t|
    t.integer  "origen"
    t.integer  "destino"
    t.date     "fecha"
    t.date     "baja"
    t.integer  "nro_formulario"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitudes_componentes_detalles", force: true do |t|
    t.integer  "id_solicitud"
    t.integer  "id_componente"
    t.integer  "cantidad_solicitada"
    t.integer  "cantidad_entregada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitudes_detalles", force: true do |t|
    t.integer  "id_solicitud"
    t.integer  "id_componente"
    t.integer  "cantidad_solicitada"
    t.integer  "cantidad_entregada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solitudes_monitores_teclados", force: true do |t|
    t.integer  "origen"
    t.integer  "destino"
    t.date     "fecha"
    t.integer  "nro_formulario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks_componentes", force: true do |t|
    t.integer  "id_componente"
    t.integer  "id_deposito"
    t.integer  "cantidad_disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks_productos_terminados", force: true do |t|
    t.integer  "id_producto_terminado"
    t.integer  "id_deposito"
    t.integer  "cantidad_disponible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos_de_depositos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos_de_movimientos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traslados_detalles", force: true do |t|
    t.integer  "id_traslado"
    t.integer  "id_producto"
    t.integer  "cantidad_transferida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traslados_productos_terminados", force: true do |t|
    t.integer  "id_orden"
    t.integer  "origen"
    t.integer  "destino"
    t.date     "fecha"
    t.integer  "nro_formulario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
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
    t.string   "nombre"
    t.string   "nivel_de_permisos"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
