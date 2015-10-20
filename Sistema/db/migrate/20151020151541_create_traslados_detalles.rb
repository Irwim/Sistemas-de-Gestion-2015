class CreateTrasladosDetalles < ActiveRecord::Migration
  def change
    create_table :traslados_detalles do |t|
      t.references :traslado_producto_terminado, index: true
      t.references :producto_terminado, index: true
      t.integer :cantidad_a_transferir

      t.timestamps
    end
  end
end
