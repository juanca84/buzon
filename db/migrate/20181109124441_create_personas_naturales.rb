class CreatePersonasNaturales < ActiveRecord::Migration[5.2]
  def change
    create_table :personas_naturales do |t|
      t.string :ci
      t.string :nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :celular
      t.string :email
      t.string :estado
    end
  end
end
