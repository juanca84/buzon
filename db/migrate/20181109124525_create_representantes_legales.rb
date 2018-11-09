class CreateRepresentantesLegales < ActiveRecord::Migration[5.2]
  def change
    create_table :representantes_legales do |t|
      t.references :persona_natural, foreign_key: true
      t.references :persona_juridica, foreign_key: true
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :estado
    end
  end
end
