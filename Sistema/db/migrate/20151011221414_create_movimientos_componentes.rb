class CreateMovimientosComponentes < ActiveRecord::Migration
  def change
    create_table :movimientos_componentes do |t|
      t.date :fecha
      t.integer :cantidad_transferida

      t.timestamps
    end
  end
end
