class CreateStocksProductosTerminados < ActiveRecord::Migration
  def change
    create_table :stocks_productos_terminados do |t|
      t.integer :cantidad_disponible

      t.timestamps
    end
  end
end
