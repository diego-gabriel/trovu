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

ActiveRecord::Schema.define(version: 20140328033832) do

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.integer  "precioRelativo"
    t.string   "logotipo"
    t.integer  "estrellas"
    t.string   "codigoEmpresa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sucursals", force: true do |t|
    t.text     "direccion"
    t.decimal  "latitud"
    t.decimal  "longitud"
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
