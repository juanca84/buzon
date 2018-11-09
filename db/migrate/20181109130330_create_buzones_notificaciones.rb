class CreateBuzonesNotificaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :buzones_notificaciones do |t|
      t.string :domicilio_electronico
      t.integer :persona_id
      t.integer :tabla
    end
    add_foreign_key :buzones_notificaciones, :personas_naturales, column: :persona_id
    add_foreign_key :buzones_notificaciones, :personas_juridicas, column: :tabla
  end
end
