class CreateMovimientosComponentes < ActiveRecord::Migration
  def change
    create_table :movimientos_componentes do |t|
      t.references :deposito, index: true
      t.references :componente, index: true
      t.references :tipo_de_movimiento, index: true
      t.date :fecha
      t.integer :cantidad_transferida

      t.timestamps
    end
  end
end
