class CreateSolicitudesComponentes < ActiveRecord::Migration
  def change
    create_table :solicitudes_componentes do |t|
      t.date :fecha
      t.integer :numero_de_formulario
      t.boolean :estado_de_solicitud
      t.date :baja_de_solicitud

      t.timestamps
    end
  end
end
