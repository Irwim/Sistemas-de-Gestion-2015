class CreateSolicitudesDetalles < ActiveRecord::Migration
  def change
    create_table :solicitudes_detalles do |t|
      t.references :solicitud_monitor_teclado, index: true
      t.references :componente, index: true
      t.integer :cantidad_solicitada
      t.integer :cantidad_entregada

      t.timestamps
    end
  end
end
