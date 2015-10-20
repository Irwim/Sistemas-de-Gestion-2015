class CreateMovimientosProductos < ActiveRecord::Migration
  def change
    create_table :movimientos_productos do |t|
      t.references :deposito, index: true
      t.references :producto_terminado, index: true
      t.references :tipo_de_movimiento, index: true
      t.date :fecha
      t.integer :cantidad_transferida

      t.timestamps
    end
  end
end
