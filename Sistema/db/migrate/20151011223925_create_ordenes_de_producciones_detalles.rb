class CreateOrdenesDeProduccionesDetalles < ActiveRecord::Migration
  def change
    create_table :ordenes_de_producciones_detalles do |t|
      t.integer :cantidad_solicitada
      t.integer :cantidad_terminada

      t.timestamps
    end
  end
end
