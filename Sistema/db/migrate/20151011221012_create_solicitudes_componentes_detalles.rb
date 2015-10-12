class CreateSolicitudesComponentesDetalles < ActiveRecord::Migration
  def change
    create_table :solicitudes_componentes_detalles do |t|
      t.integer :cantidad_solicitada
      t.integer :cantidad_entregada

      t.timestamps
    end
  end
end
