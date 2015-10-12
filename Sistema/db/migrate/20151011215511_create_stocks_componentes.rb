class CreateStocksComponentes < ActiveRecord::Migration
  def change
    create_table :stocks_componentes do |t|
      t.integer :cantidad_disponible

      t.timestamps
    end
  end
end
