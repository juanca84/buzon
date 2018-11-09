class CreateVinculaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :vinculaciones do |t|
      t.references :buzon_notificacion, foreign_key: true
      t.references :persona_natural, foreign_key: true
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :estado
    end
  end
end
