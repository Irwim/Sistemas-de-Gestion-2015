class CreateOrdenesDeProduccionDetalles < ActiveRecord::Migration
  def change
    create_table :ordenes_de_produccion_detalles do |t|
      t.references :orden_de_produccion, index: true
      t.references :producto_terminado, index: true
      t.integer :cantidad_solicitada
      t.integer :cantidad_terminada

      t.timestamps
    end
  end
end
