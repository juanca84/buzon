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

ActiveRecord::Schema.define(version: 2018_11_09_131327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buzones_notificaciones", force: :cascade do |t|
    t.string "domicilio_electronico"
    t.integer "persona_id"
    t.integer "tabla"
  end

  create_table "mensajes", force: :cascade do |t|
    t.integer "remitente_buzon_id"
    t.integer "destinatario_buzon_id"
    t.bigint "permiso_id"
    t.string "tipo"
    t.string "asunto"
    t.string "contenido"
    t.string "codigo_blockchain"
    t.date "fecha_inicio"
    t.string "hash"
    t.string "estado"
    t.index ["permiso_id"], name: "index_mensajes_on_permiso_id"
  end

  create_table "permisos", force: :cascade do |t|
    t.bigint "persona_juridica_id"
    t.integer "tramite_id"
    t.integer "documento_id"
    t.date "fecha_inicio"
    t.date "fecha_fin"
    t.string "estado"
    t.index ["persona_juridica_id"], name: "index_permisos_on_persona_juridica_id"
  end

  create_table "personas_juridicas", force: :cascade do |t|
    t.string "nit"
    t.string "razon_social"
    t.string "tipo"
    t.string "estado"
  end

  create_table "personas_naturales", force: :cascade do |t|
    t.string "ci"
    t.string "nombre"
    t.string "primer_apellido"
    t.string "segundo_apellido"
    t.string "celular"
    t.string "email"
    t.string "estado"
  end

  create_table "representantes_legales", force: :cascade do |t|
    t.bigint "persona_natural_id"
    t.bigint "persona_juridica_id"
    t.date "fecha_inicio"
    t.date "fecha_fin"
    t.string "estado"
    t.index ["persona_juridica_id"], name: "index_representantes_legales_on_persona_juridica_id"
    t.index ["persona_natural_id"], name: "index_representantes_legales_on_persona_natural_id"
  end

  create_table "vinculaciones", force: :cascade do |t|
    t.bigint "buzon_notificacion_id"
    t.bigint "persona_natural_id"
    t.date "fecha_inicio"
    t.date "fecha_fin"
    t.string "estado"
    t.index ["buzon_notificacion_id"], name: "index_vinculaciones_on_buzon_notificacion_id"
    t.index ["persona_natural_id"], name: "index_vinculaciones_on_persona_natural_id"
  end

  add_foreign_key "buzones_notificaciones", "personas_juridicas", column: "tabla"
  add_foreign_key "buzones_notificaciones", "personas_naturales", column: "persona_id"
  add_foreign_key "mensajes", "buzones_notificaciones", column: "destinatario_buzon_id"
  add_foreign_key "mensajes", "buzones_notificaciones", column: "remitente_buzon_id"
  add_foreign_key "mensajes", "permisos"
  add_foreign_key "permisos", "personas_juridicas"
  add_foreign_key "representantes_legales", "personas_juridicas"
  add_foreign_key "representantes_legales", "personas_naturales"
  add_foreign_key "vinculaciones", "buzones_notificaciones"
  add_foreign_key "vinculaciones", "personas_naturales"
end
