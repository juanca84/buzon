class CreatePermisos < ActiveRecord::Migration[5.2]
  def change
    create_table :permisos do |t|
      t.references :persona_juridica, foreign_key: true
      t.integer :tramite_id
      t.integer :documento_id
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :estado
    end
  end
end
