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

ActiveRecord::Schema.define(version: 20140328210133) do

  create_table "categoria", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.integer  "precioRelativo"
    t.string   "logotipo"
    t.integer  "estrellas"
    t.string   "codigoEmpresa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entrada_menus", force: true do |t|
    t.string   "plato"
    t.text     "descripcion"
    t.decimal  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publicidads", force: true do |t|
    t.date     "fechaInicio"
    t.text     "descripcion"
    t.decimal  "precio"
    t.string   "idPublicidad"
    t.string   "imagen"
    t.integer  "periodo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategoria", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sucursals", force: true do |t|
    t.text     "direccion"
    t.decimal  "latitud"
    t.decimal  "longitud"
    t.integer  "codigoSucursal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefonos", force: true do |t|
    t.integer  "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turnos", force: true do |t|
    t.string   "dia"
    t.integer  "horaInicio"
    t.integer  "horaFin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
