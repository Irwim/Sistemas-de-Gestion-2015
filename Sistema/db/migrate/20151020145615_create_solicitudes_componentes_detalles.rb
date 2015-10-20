class CreateSolicitudesComponentesDetalles < ActiveRecord::Migration
  def change
    create_table :solicitudes_componentes_detalles do |t|
      t.references :solicitud_componente, index: true
      t.references :componente, index: true
      t.integer :cantidad_solicitada
      t.integer :cantidad_entregada

      t.timestamps
    end
  end
end
