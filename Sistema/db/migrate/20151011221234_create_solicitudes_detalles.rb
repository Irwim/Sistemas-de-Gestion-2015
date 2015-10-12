class CreateSolicitudesDetalles < ActiveRecord::Migration
  def change
    create_table :solicitudes_detalles do |t|
      t.integer :cantidad_solicitada
      t.integer :cantidad_entregada

      t.timestamps
    end
  end
end
