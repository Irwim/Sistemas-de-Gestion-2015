class CreateStocksComponentes < ActiveRecord::Migration
  def change
    create_table :stocks_componentes do |t|
      t.references :deposito, index: true
      t.references :componente, index: true
      t.integer :cantidad_disponible

      t.timestamps
    end
  end
end
