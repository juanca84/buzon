class CreatePersonasJuridicas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas_juridicas do |t|
      t.string :nit
      t.string :razon_social
      t.string :tipo
      t.string :estado
    end
  end
end
