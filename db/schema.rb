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

ActiveRecord::Schema.define(version: 20140329042015) do

  create_table "categories", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorizations", force: true do |t|
    t.integer  "sucursal_id"
    t.integer  "sub_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorizations", ["sub_category_id"], name: "index_categorizations_on_sub_category_id"
  add_index "categorizations", ["sucursal_id"], name: "index_categorizations_on_sucursal_id"

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.integer  "precioRelativo"
    t.string   "logotipo"
    t.integer  "estrellas"
    t.string   "codigoEmpresa"
    t.string   "paginaWeb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_entries", force: true do |t|
    t.string   "plato"
    t.text     "descripcion"
    t.decimal  "precio"
    t.integer  "sucursal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menu_entries", ["sucursal_id"], name: "index_menu_entries_on_sucursal_id"

  create_table "publicities", force: true do |t|
    t.date     "fechaInicio"
    t.text     "descripcion"
    t.decimal  "precio"
    t.string   "imagen"
    t.integer  "periodo"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publicities", ["empresa_id"], name: "index_publicities_on_empresa_id"

  create_table "sub_categories", force: true do |t|
    t.string   "nombre"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id"

  create_table "sucursals", force: true do |t|
    t.text     "direccion"
    t.decimal  "latitud"
    t.decimal  "longitud"
    t.integer  "codigoSucursal"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sucursals", ["empresa_id"], name: "index_sucursals_on_empresa_id"

  create_table "telefonos", force: true do |t|
    t.integer  "numero"
    t.integer  "sucursal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "telefonos", ["sucursal_id"], name: "index_telefonos_on_sucursal_id"

  create_table "turnos", force: true do |t|
    t.string   "dia"
    t.integer  "horaInicio"
    t.integer  "horaFin"
    t.integer  "sucursal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "turnos", ["sucursal_id"], name: "index_turnos_on_sucursal_id"

end
