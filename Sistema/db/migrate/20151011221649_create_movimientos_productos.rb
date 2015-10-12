class CreateMovimientosProductos < ActiveRecord::Migration
  def change
    create_table :movimientos_productos do |t|
      t.date :fecha
      t.integer :cantidad_transferida

      t.timestamps
    end
  end
end
