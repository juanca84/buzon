class CreateMensajes < ActiveRecord::Migration[5.2]
  def change
    create_table :mensajes do |t|
      t.integer :remitente_buzon_id
      t.integer :destinatario_buzon_id
      t.references :permiso, foreign_key: true
      t.string :tipo
      t.string :asunto
      t.string :contenido
      t.string :codigo_blockchain
      t.date :fecha_inicio
      t.string :hash
      t.string :estado
    end
    add_foreign_key :mensajes, :buzones_notificaciones, column: :remitente_buzon_id
    add_foreign_key :mensajes, :buzones_notificaciones, column: :destinatario_buzon_id
  end
end
